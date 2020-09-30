.class Lcom/company/mathgame/result$2;
.super Ljava/lang/Object;
.source "result.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/company/mathgame/result;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/company/mathgame/result;


# direct methods
.method constructor <init>(Lcom/company/mathgame/result;)V
    .registers 2

    .line 42
    iput-object p1, p0, Lcom/company/mathgame/result$2;->this$0:Lcom/company/mathgame/result;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 2

    .line 45
    iget-object p1, p0, Lcom/company/mathgame/result$2;->this$0:Lcom/company/mathgame/result;

    invoke-virtual {p1}, Lcom/company/mathgame/result;->finish()V

    return-void
.end method
