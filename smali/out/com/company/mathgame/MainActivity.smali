.class public Lcom/company/mathgame/MainActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "MainActivity.java"


# instance fields
.field addition:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 10
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 3

    .line 16
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0a001d

    .line 17
    invoke-virtual {p0, p1}, Lcom/company/mathgame/MainActivity;->setContentView(I)V

    const p1, 0x7f070046

    .line 19
    invoke-virtual {p0, p1}, Lcom/company/mathgame/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/company/mathgame/MainActivity;->addition:Landroid/widget/Button;

    .line 21
    new-instance v0, Lcom/company/mathgame/MainActivity$1;

    invoke-direct {v0, p0}, Lcom/company/mathgame/MainActivity$1;-><init>(Lcom/company/mathgame/MainActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
