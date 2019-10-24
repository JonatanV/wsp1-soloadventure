<main>
        <p>
            <?= $story['body'] ?>
        </p>

        <ul>
            <?php foreach ($links as $link) : ?>
                <li>
                    <a href="?id=<?= $link['target_id'] ?>">
                        <?= $link['description'] ?>
                    </a>
                </li>
            <?php endforeach ?>
        </ul>
    </main>