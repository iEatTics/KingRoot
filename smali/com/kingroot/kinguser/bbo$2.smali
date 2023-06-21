.class Lcom/kingroot/kinguser/bbo$2;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/bbo;->clearTimeOutLogs()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic bfn:Lcom/kingroot/kinguser/bbo;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/bbo;)V
    .locals 0

    .prologue
    .line 55
    iput-object p1, p0, Lcom/kingroot/kinguser/bbo$2;->bfn:Lcom/kingroot/kinguser/bbo;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 59
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 60
    invoke-static {}, Lcom/kingroot/kinguser/bbq;->WA()Lcom/kingroot/kinguser/bbq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bbq;->clearTimeOutLogs()V

    .line 61
    return-void
.end method
