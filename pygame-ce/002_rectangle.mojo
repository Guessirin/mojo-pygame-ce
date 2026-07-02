from std import time
from std.python import Python

def run_display(
    window_height: Int = 600,
    window_width: Int = 600,
    background_color: String = "black",
    cell_color: String = "green",
) raises -> None:

    pygame = Python.import_module("pygame")

    # Initialize pygame modules
    pygame.init()

    # Create a window and set its title
    window = pygame.display.set_mode(Python.tuple(window_width, window_height))
    pygame.display.set_caption("Mojo && Pygame-ce")

    cell_fill_color = pygame.Color(cell_color)
    background_fill_color = pygame.Color(background_color)

    running = True
    while running:
        # Poll for events
        for event in pygame.event.get():
            if event.type == pygame.QUIT:
                # Quit if the window is closed
                running = False
            elif event.type == pygame.KEYDOWN:
                # Also quit if the user presses <Escape> or 'q'
                if event.key == pygame.K_ESCAPE or event.key == pygame.K_q:
                    running = False

        # Clear the window by painting with the background color
        window.fill(background_fill_color)

        pygame.draw.rect(window, cell_fill_color, Python.tuple(200.0, 200.0, 200, 200))

        pygame.display.flip()

    pygame.quit()


def main() raises:
    run_display()
