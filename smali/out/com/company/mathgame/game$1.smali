.class Lcom/company/mathgame/game$1;
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

    .line 60
    iput-object p1, p0, Lcom/company/mathgame/game$1;->this$0:Lcom/company/mathgame/game;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    .line 64
    iget-object p1, p0, Lcom/company/mathgame/game$1;->this$0:Lcom/company/mathgame/game;

    iget-object v0, p1, Lcom/company/mathgame/game;->answer:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p1, Lcom/company/mathgame/game;->userAnswer:I

    .line 65
    iget-object p1, p0, Lcom/company/mathgame/game$1;->this$0:Lcom/company/mathgame/game;

    invoke-virtual {p1}, Lcom/company/mathgame/game;->pauseTimer()V

    .line 66
    iget-object p1, p0, Lcom/company/mathgame/game$1;->this$0:Lcom/company/mathgame/game;

    iget p1, p1, Lcom/company/mathgame/game;->userAnswer:I

    iget-object v0, p0, Lcom/company/mathgame/game$1;->this$0:Lcom/company/mathgame/game;

    iget v0, v0, Lcom/company/mathgame/game;->realAnswer:I

    const-string v1, ""

    if-ne p1, v0, :cond_53

    .line 68
    iget-object p1, p0, Lcom/company/mathgame/game$1;->this$0:Lcom/company/mathgame/game;

    iget v0, p1, Lcom/company/mathgame/game;->userScore:I

    add-int/lit8 v0, v0, 0xa

    iput v0, p1, Lcom/company/mathgame/game;->userScore:I

    .line 69
    iget-object p1, p0, Lcom/company/mathgame/game$1;->this$0:Lcom/company/mathgame/game;

    iget-object p1, p1, Lcom/company/mathgame/game;->question:Landroid/widget/TextView;

    const-string v0, "Correct!"

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 70
    iget-object p1, p0, Lcom/company/mathgame/game$1;->this$0:Lcom/company/mathgame/game;

    iget-object p1, p1, Lcom/company/mathgame/game;->score:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/company/mathgame/game$1;->this$0:Lcom/company/mathgame/game;

    iget v1, v1, Lcom/company/mathgame/game;->userScore:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_7e

    .line 75
    :cond_53
    iget-object p1, p0, Lcom/company/mathgame/game$1;->this$0:Lcom/company/mathgame/game;

    iget v0, p1, Lcom/company/mathgame/game;->userLives:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p1, Lcom/company/mathgame/game;->userLives:I

    .line 76
    iget-object p1, p0, Lcom/company/mathgame/game$1;->this$0:Lcom/company/mathgame/game;

    iget-object p1, p1, Lcom/company/mathgame/game;->question:Landroid/widget/TextView;

    const-string v0, "Wrong Answer"

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 77
    iget-object p1, p0, Lcom/company/mathgame/game$1;->this$0:Lcom/company/mathgame/game;

    iget-object p1, p1, Lcom/company/mathgame/game;->lives:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/company/mathgame/game$1;->this$0:Lcom/company/mathgame/game;

    iget v1, v1, Lcom/company/mathgame/game;->userLives:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_7e
    return-void
.end method
