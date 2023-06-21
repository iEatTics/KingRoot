.class Lcom/kingroot/kinguser/auq$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/auq$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic aRW:Lcom/kingroot/kinguser/auq$1;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/auq$1;)V
    .locals 0

    .prologue
    .line 62
    iput-object p1, p0, Lcom/kingroot/kinguser/auq$1$1;->aRW:Lcom/kingroot/kinguser/auq$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 65
    invoke-static {}, Lcom/kingroot/kinguser/beg;->Zj()Lcom/kingroot/kinguser/beg;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/auq$1$1;->aRW:Lcom/kingroot/kinguser/auq$1;

    iget-object v1, v1, Lcom/kingroot/kinguser/auq$1;->aRV:Lcom/kingroot/kinguser/auq;

    invoke-static {v1}, Lcom/kingroot/kinguser/auq;->b(Lcom/kingroot/kinguser/auq;)Lcom/kingroot/kinguser/bed;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/beg;->c(Lcom/kingroot/kinguser/bed;)Z

    .line 66
    return-void
.end method
