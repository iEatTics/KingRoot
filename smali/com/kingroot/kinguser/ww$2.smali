.class Lcom/kingroot/kinguser/ww$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/ww;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Sl:Lcom/kingroot/kinguser/ww;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/ww;)V
    .locals 0

    .prologue
    .line 334
    iput-object p1, p0, Lcom/kingroot/kinguser/ww$2;->Sl:Lcom/kingroot/kinguser/ww;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 336
    iget-object v0, p0, Lcom/kingroot/kinguser/ww$2;->Sl:Lcom/kingroot/kinguser/ww;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/ww;->setDragState(I)V

    .line 337
    return-void
.end method
