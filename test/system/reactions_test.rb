require "application_system_test_case"

class ReactionsTest < ApplicationSystemTestCase
  setup do
    @reaction = reactions(:one)
  end

  test "visiting the index" do
    visit reactions_url
    assert_selector "h1", text: "Reactions"
  end

  test "should create reaction" do
    visit reactions_url
    click_on "New reaction"

    check "Dislike" if @reaction.dislike
    check "Like" if @reaction.like
    fill_in "Post", with: @reaction.post_id
    fill_in "User", with: @reaction.user_id
    click_on "Create Reaction"

    assert_text "Reaction was successfully created"
    click_on "Back"
  end

  test "should update Reaction" do
    visit reaction_url(@reaction)
    click_on "Edit this reaction", match: :first

    check "Dislike" if @reaction.dislike
    check "Like" if @reaction.like
    fill_in "Post", with: @reaction.post_id
    fill_in "User", with: @reaction.user_id
    click_on "Update Reaction"

    assert_text "Reaction was successfully updated"
    click_on "Back"
  end

  test "should destroy Reaction" do
    visit reaction_url(@reaction)
    click_on "Destroy this reaction", match: :first

    assert_text "Reaction was successfully destroyed"
  end
end
