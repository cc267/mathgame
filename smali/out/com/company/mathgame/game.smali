.class public Lcom/company/mathgame/game;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "game.java"


# static fields
.field private static final START_TIMER_IN_MILIS:J = 0x1d4c0L


# instance fields
.field answer:Landroid/widget/EditText;

.field lives:Landroid/widget/TextView;

.field nextQuestion:Landroid/widget/Button;

.field number1:I

.field number2:I

.field ok:Landroid/widget/Button;

.field question:Landroid/widget/TextView;

.field random:Ljava/util/Random;

.field realAnswer:I

.field score:Landroid/widget/TextView;

.field time:Landroid/widget/TextView;

.field time_left_in_millis:J

.field timer:Landroid/os/CountDownTimer;

.field timer_running:Ljava/lang/Boolean;

.field userAnswer:I

.field userLives:I

.field userScore:I


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 17
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    .line 29
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lcom/company/mathgame/game;->random:Ljava/util/Random;

    const/4 v0, 0x0

    .line 35
    iput v0, p0, Lcom/company/mathgame/game;->userScore:I

    const/4 v0, 0x4

    .line 36
    iput v0, p0, Lcom/company/mathgame/game;->userLives:I

    const-wide/32 v0, 0x1d4c0

    .line 41
    iput-wide v0, p0, Lcom/company/mathgame/game;->time_left_in_millis:J

    return-void
.end method


# virtual methods
.method public gameContinue()V
    .registers 4

    .line 110
    iget-object v0, p0, Lcom/company/mathgame/game;->random:Ljava/util/Random;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    iput v0, p0, Lcom/company/mathgame/game;->number1:I

    .line 111
    iget-object v0, p0, Lcom/company/mathgame/game;->random:Ljava/util/Random;

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    iput v0, p0, Lcom/company/mathgame/game;->number2:I

    .line 112
    iget v1, p0, Lcom/company/mathgame/game;->number1:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/company/mathgame/game;->realAnswer:I

    .line 114
    iget-object v0, p0, Lcom/company/mathgame/game;->question:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/company/mathgame/game;->number1:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " + "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/company/mathgame/game;->number2:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 115
    invoke-virtual {p0}, Lcom/company/mathgame/game;->startTimer()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 3

    .line 45
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0a001c

    .line 46
    invoke-virtual {p0, p1}, Lcom/company/mathgame/game;->setContentView(I)V

    const p1, 0x7f0700b5

    .line 48
    invoke-virtual {p0, p1}, Lcom/company/mathgame/game;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/company/mathgame/game;->score:Landroid/widget/TextView;

    const p1, 0x7f0700b3

    .line 49
    invoke-virtual {p0, p1}, Lcom/company/mathgame/game;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/company/mathgame/game;->lives:Landroid/widget/TextView;

    const p1, 0x7f0700b6

    .line 50
    invoke-virtual {p0, p1}, Lcom/company/mathgame/game;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/company/mathgame/game;->time:Landroid/widget/TextView;

    const p1, 0x7f0700b7

    .line 52
    invoke-virtual {p0, p1}, Lcom/company/mathgame/game;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/company/mathgame/game;->question:Landroid/widget/TextView;

    const p1, 0x7f070058

    .line 53
    invoke-virtual {p0, p1}, Lcom/company/mathgame/game;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/company/mathgame/game;->answer:Landroid/widget/EditText;

    const p1, 0x7f070044

    .line 55
    invoke-virtual {p0, p1}, Lcom/company/mathgame/game;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/company/mathgame/game;->ok:Landroid/widget/Button;

    const p1, 0x7f070043

    .line 56
    invoke-virtual {p0, p1}, Lcom/company/mathgame/game;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/company/mathgame/game;->nextQuestion:Landroid/widget/Button;

    .line 58
    invoke-virtual {p0}, Lcom/company/mathgame/game;->gameContinue()V

    .line 60
    iget-object p1, p0, Lcom/company/mathgame/game;->ok:Landroid/widget/Button;

    new-instance v0, Lcom/company/mathgame/game$1;

    invoke-direct {v0, p0}, Lcom/company/mathgame/game$1;-><init>(Lcom/company/mathgame/game;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 84
    iget-object p1, p0, Lcom/company/mathgame/game;->nextQuestion:Landroid/widget/Button;

    new-instance v0, Lcom/company/mathgame/game$2;

    invoke-direct {v0, p0}, Lcom/company/mathgame/game$2;-><init>(Lcom/company/mathgame/game;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public pauseTimer()V
    .registers 2

    .line 152
    iget-object v0, p0, Lcom/company/mathgame/game;->timer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    const/4 v0, 0x0

    .line 153
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/company/mathgame/game;->timer_running:Ljava/lang/Boolean;

    return-void
.end method

.method public startTimer()V
    .registers 8

    .line 121
    new-instance v6, Lcom/company/mathgame/game$3;

    iget-wide v2, p0, Lcom/company/mathgame/game;->time_left_in_millis:J

    const-wide/16 v4, 0x3e8

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/company/mathgame/game$3;-><init>(Lcom/company/mathgame/game;JJ)V

    .line 139
    invoke-virtual {v6}, Lcom/company/mathgame/game$3;->start()Landroid/os/CountDownTimer;

    move-result-object v0

    iput-object v0, p0, Lcom/company/mathgame/game;->timer:Landroid/os/CountDownTimer;

    const/4 v0, 0x1

    .line 141
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/company/mathgame/game;->timer_running:Ljava/lang/Boolean;

    return-void
.end method

.method public updateText()V
    .registers 5

    .line 146
    iget-wide v0, p0, Lcom/company/mathgame/game;->time_left_in_millis:J

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    long-to-int v1, v0

    rem-int/lit8 v1, v1, 0x78

    .line 147
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v3, 0x0

    aput-object v1, v2, v3

    const-string v1, "%02d"

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 148
    iget-object v1, p0, Lcom/company/mathgame/game;->time:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
