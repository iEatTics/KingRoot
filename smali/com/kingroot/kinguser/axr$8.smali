.class Lcom/kingroot/kinguser/axr$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/axr;->notifyItemRemoved(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Qj:I

.field final synthetic bbr:Lcom/kingroot/kinguser/axr;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/axr;I)V
    .locals 0

    .prologue
    .line 195
    iput-object p1, p0, Lcom/kingroot/kinguser/axr$8;->bbr:Lcom/kingroot/kinguser/axr;

    iput p2, p0, Lcom/kingroot/kinguser/axr$8;->Qj:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 198
    iget-object v0, p0, Lcom/kingroot/kinguser/axr$8;->bbr:Lcom/kingroot/kinguser/axr;

    invoke-static {v0}, Lcom/kingroot/kinguser/axr;->f(Lcom/kingroot/kinguser/axr;)Lcom/kingroot/kinguser/agh;

    move-result-object v0

    iget v1, p0, Lcom/kingroot/kinguser/axr$8;->Qj:I

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/agh;->notifyItemRemoved(I)V

    .line 199
    return-void
.end method
