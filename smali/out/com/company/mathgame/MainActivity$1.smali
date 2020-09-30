.class Lcom/company/mathgame/MainActivity$1;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/company/mathgame/MainActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/company/mathgame/MainActivity;


# direct methods
.method constructor <init>(Lcom/company/mathgame/MainActivity;)V
    .registers 2

    .line 21
    iput-object p1, p0, Lcom/company/mathgame/MainActivity$1;->this$0:Lcom/company/mathgame/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    .line 24
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/company/mathgame/MainActivity$1;->this$0:Lcom/company/mathgame/MainActivity;

    const-class v1, Lcom/company/mathgame/game;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 25
    iget-object v0, p0, Lcom/company/mathgame/MainActivity$1;->this$0:Lcom/company/mathgame/MainActivity;

    invoke-virtual {v0, p1}, Lcom/company/mathgame/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 26
    iget-object p1, p0, Lcom/company/mathgame/MainActivity$1;->this$0:Lcom/company/mathgame/MainActivity;

    invoke-virtual {p1}, Lcom/company/mathgame/MainActivity;->finish()V

    return-void
.end method
