.class public Lcom/company/mathgame/result;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "result.java"


# instance fields
.field back:Landroid/widget/Button;

.field playAgain:Landroid/widget/Button;

.field result:Landroid/widget/TextView;

.field score:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 11
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    const/4 v0, 0x0

    .line 16
    iput v0, p0, Lcom/company/mathgame/result;->score:I

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 5

    .line 21
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0a001e

    .line 22
    invoke-virtual {p0, p1}, Lcom/company/mathgame/result;->setContentView(I)V

    const p1, 0x7f0700b4

    .line 24
    invoke-virtual {p0, p1}, Lcom/company/mathgame/result;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/company/mathgame/result;->result:Landroid/widget/TextView;

    const p1, 0x7f070042

    .line 25
    invoke-virtual {p0, p1}, Lcom/company/mathgame/result;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/company/mathgame/result;->playAgain:Landroid/widget/Button;

    const p1, 0x7f070047

    .line 26
    invoke-virtual {p0, p1}, Lcom/company/mathgame/result;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/company/mathgame/result;->back:Landroid/widget/Button;

    .line 28
    invoke-virtual {p0}, Lcom/company/mathgame/result;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "score"

    const/4 v1, 0x0

    .line 29
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/company/mathgame/result;->score:I

    .line 30
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    .line 31
    iget-object v0, p0, Lcom/company/mathgame/result;->result:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Your Score:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 33
    iget-object p1, p0, Lcom/company/mathgame/result;->playAgain:Landroid/widget/Button;

    new-instance v0, Lcom/company/mathgame/result$1;

    invoke-direct {v0, p0}, Lcom/company/mathgame/result$1;-><init>(Lcom/company/mathgame/result;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 42
    iget-object p1, p0, Lcom/company/mathgame/result;->back:Landroid/widget/Button;

    new-instance v0, Lcom/company/mathgame/result$2;

    invoke-direct {v0, p0}, Lcom/company/mathgame/result$2;-><init>(Lcom/company/mathgame/result;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
