.class Lcom/kingroot/kinguser/ayb$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kingroot/kinguser/bid$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/ayb;->Ug()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingroot/kinguser/ayb;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/ayb;)V
    .locals 0

    .prologue
    .line 570
    iput-object p1, p0, Lcom/kingroot/kinguser/ayb$3;->this$0:Lcom/kingroot/kinguser/ayb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public n(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 574
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/ayb$3;->this$0:Lcom/kingroot/kinguser/ayb;

    invoke-static {v0}, Lcom/kingroot/kinguser/ayb;->g(Lcom/kingroot/kinguser/ayb;)Lcom/kingroot/kinguser/bid;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bid;->dismiss()V

    .line 575
    iget-object v0, p0, Lcom/kingroot/kinguser/ayb$3;->this$0:Lcom/kingroot/kinguser/ayb;

    invoke-static {v0}, Lcom/kingroot/kinguser/ayb;->h(Lcom/kingroot/kinguser/ayb;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/kingroot/kinguser/bgd;->bt(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 579
    :goto_0
    return-void

    .line 576
    :catch_0
    move-exception v0

    goto :goto_0
.end method
