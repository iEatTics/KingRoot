.class Lcom/kingroot/kinguser/axg$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/axg;->bY(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic aYv:Lcom/kingroot/kinguser/axg;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/axg;)V
    .locals 0

    .prologue
    .line 726
    iput-object p1, p0, Lcom/kingroot/kinguser/axg$8;->aYv:Lcom/kingroot/kinguser/axg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 729
    iget-object v0, p0, Lcom/kingroot/kinguser/axg$8;->aYv:Lcom/kingroot/kinguser/axg;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/axg;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 730
    return-void
.end method
