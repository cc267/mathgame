.class Lcom/company/mathgame/game$2;
.super Ljava/lang/Object;
.source "game.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/company/mathgame/game;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/company/mathgame/game;


# direct methods
.method constructor <init>(Lcom/company/mathgame/game;)V
    .registers 2

    .line 84
    iput-object p1, p0, Lcom/company/mathgame/game$2;->this$0:Lcom/company/mathgame/game;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    .line 88
    iget-object p1, p0, Lcom/company/mathgame/game$2;->this$0:Lcom/company/mathgame/game;

    iget-object p1, p1, Lcom/company/mathgame/game;->answer:Landroid/widget/EditText;

    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 89
    iget-object p1, p0, Lcom/company/mathgame/game$2;->this$0:Lcom/company/mathgame/game;

    invoke-virtual {p1}, Lcom/company/mathgame/game;->gameContinue()V

    .line 91
    iget-object p1, p0, Lcom/company/mathgame/game$2;->this$0:Lcom/company/mathgame/game;

    iget p1, p1, Lcom/company/mathgame/game;->userLives:I

    if-gtz p1, :cond_41

    .line 93
    iget-object p1, p0, Lcom/company/mathgame/game$2;->this$0:Lcom/company/mathgame/game;

    invoke-virtual {p1}, Lcom/company/mathgame/game;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const/4 v0, 0x1

    const-string v1, "Game Over"

    invoke-static {p1, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 94
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/company/mathgame/game$2;->this$0:Lcom/company/mathgame/game;

    const-class v1, Lcom/company/mathgame/result;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 95
    iget-object v0, p0, Lcom/company/mathgame/game$2;->this$0:Lcom/company/mathgame/game;

    iget v0, v0, Lcom/company/mathgame/game;->userScore:I

    const-string v1, "score"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 96
    iget-object v0, p0, Lcom/company/mathgame/game$2;->this$0:Lcom/company/mathgame/game;

    invoke-virtual {v0, p1}, Lcom/company/mathgame/game;->startActivity(Landroid/content/Intent;)V

    .line 97
    iget-object p1, p0, Lcom/company/mathgame/game$2;->this$0:Lcom/company/mathgame/game;

    invoke-virtual {p1}, Lcom/company/mathgame/game;->finish()V

    goto :goto_46

    .line 101
    :cond_41
    iget-object p1, p0, Lcom/company/mathgame/game$2;->this$0:Lcom/company/mathgame/game;

    invoke-virtual {p1}, Lcom/company/mathgame/game;->gameContinue()V

    :goto_46
    return-void
.end method
