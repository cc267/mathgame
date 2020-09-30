.class Lcom/company/mathgame/game$3;
.super Landroid/os/CountDownTimer;
.source "game.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/company/mathgame/game;->startTimer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/company/mathgame/game;


# direct methods
.method constructor <init>(Lcom/company/mathgame/game;JJ)V
    .registers 6

    .line 121
    iput-object p1, p0, Lcom/company/mathgame/game$3;->this$0:Lcom/company/mathgame/game;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .registers 3

    .line 132
    iget-object v0, p0, Lcom/company/mathgame/game$3;->this$0:Lcom/company/mathgame/game;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcom/company/mathgame/game;->timer_running:Ljava/lang/Boolean;

    .line 133
    iget-object v0, p0, Lcom/company/mathgame/game$3;->this$0:Lcom/company/mathgame/game;

    invoke-virtual {v0}, Lcom/company/mathgame/game;->pauseTimer()V

    .line 134
    iget-object v0, p0, Lcom/company/mathgame/game$3;->this$0:Lcom/company/mathgame/game;

    invoke-virtual {v0}, Lcom/company/mathgame/game;->updateText()V

    .line 135
    iget-object v0, p0, Lcom/company/mathgame/game$3;->this$0:Lcom/company/mathgame/game;

    iget v1, v0, Lcom/company/mathgame/game;->userLives:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Lcom/company/mathgame/game;->userLives:I

    .line 136
    iget-object v0, p0, Lcom/company/mathgame/game$3;->this$0:Lcom/company/mathgame/game;

    iget-object v0, v0, Lcom/company/mathgame/game;->question:Landroid/widget/TextView;

    const-string v1, "Time\'s Up"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onTick(J)V
    .registers 4

    .line 124
    iget-object v0, p0, Lcom/company/mathgame/game$3;->this$0:Lcom/company/mathgame/game;

    iput-wide p1, v0, Lcom/company/mathgame/game;->time_left_in_millis:J

    .line 125
    iget-object p1, p0, Lcom/company/mathgame/game$3;->this$0:Lcom/company/mathgame/game;

    invoke-virtual {p1}, Lcom/company/mathgame/game;->updateText()V

    return-void
.end method
