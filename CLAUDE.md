# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

# Mind Blend Cafe

Jekyll digital garden at mindblendcafe.com, built from this repo by GitHub Actions on push to main.

## How I work
- Rough notes live in _notes/Brewing/, finished notes in _notes/Done-ish/.
- Finished pieces are published on Substack (mindblendcafe.substack.com).
- Keep things simple. Prefer small changes over new tools or plugins.

## Rules
- Never git commit or git push. I review and push myself.
- Never edit Gemfile or Gemfile.lock unless I ask.
- Don't rewrite my notes in your own voice. Suggest edits; let me decide.
- This repo is public. Flag anything that looks private before I commit it.

## Commands
- Preview: bundle exec jekyll serve --host 0.0.0.0
- After publishing a Brew: bundle exec jekyll build, then I commit _data/substack_cache.json

## How the site works
- Only notes in Brewing/ and Done-ish/ are published. Folders starting with an underscore (_draft/, _abyss!/, _templates/, etc.) are skipped. URLs come from the note's title, not its folder.
- `[[Note title]]` links become internal links and backlinks via _plugins/bidirectional_links_generator.rb.
- A build edits note files: _plugins/empty_front_matter_note_injector.rb adds empty front matter to any note missing it. Expect those diffs.
- GitHub can't reach Substack, so the live site uses the saved copy in _data/substack_cache.json. That's why the cache must be committed after each new post.
