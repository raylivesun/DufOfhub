module matrix.gnu.bin.inyeakids.decfenwam;

import std.algorithm;
import std.array;
import std.conv;
import std.range;
import std.stdio;

void main()
{
    // Define the game board size and initial state
    const int SIZE = 8;
    // Define the possible moves for each player
    int[][] playerMoves = [
        [1, 0], // Up
        [-1, 0], // Down
        [0, 1], // Right
        [0, -1] // Left
    ];
    int player = 1; // Current player (1 or 2)

    // Game loop
    while (true)
    {
        // Print the current game board
        printBoard(board);
        printf("Player %d's turn\n", player);

        // Get player input and validate it
        int row, col;
        do
        {
            printf("Enter row (0-%d): ", SIZE - 1);
            scanf("%d", &row);
            printf("Enter column (0-%d): ", SIZE - 1);
            scanf("%d", &col);
        }
        while (row < 0 || row >= SIZE || col < 0 || col >= SIZE || board[row][col] != 0);
        // Place the player's piece on the board
        board[row][col] = player;

        // Check for a winning condition
        if (checkWin(board, player))
        {
            printBoard(board);
            printf("Player %d wins!\n", player);
            break;
        }

        // Switch players
        player = player == 1 ? 2 : 1;
        // Check for a draw condition
        if (countEmptyCells(board) == 0)
        {
            printBoard(board);
            printf("It's a draw!\n");
            break;
        }
    }

}
