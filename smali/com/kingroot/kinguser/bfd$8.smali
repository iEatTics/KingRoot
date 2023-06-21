.class Lcom/kingroot/kinguser/bfd$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kingroot/kinguser/bid$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/bfd;->Ug()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingroot/kinguser/bfd;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/bfd;)V
    .locals 0

    .prologue
    .line 631
    iput-object p1, p0, Lcom/kingroot/kinguser/bfd$8;->this$0:Lcom/kingroot/kinguser/bfd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public n(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 635
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/bfd$8;->this$0:Lcom/kingroot/kinguser/bfd;

    invoke-static {v0}, Lcom/kingroot/kinguser/bfd;->t(Lcom/kingroot/kinguser/bfd;)Lcom/kingroot/kinguser/big;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/big;->dismiss()V

    .line 636
    iget-object v0, p0, Lcom/kingroot/kinguser/bfd$8;->this$0:Lcom/kingroot/kinguser/bfd;

    iget-object v0, v0, Lcom/kingroot/kinguser/bfd;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/kingroot/kinguser/bgd;->bt(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 640
    :goto_0
    return-void

    .line 637
    :catch_0
    move-exception v0

    goto :goto_0
.end method
