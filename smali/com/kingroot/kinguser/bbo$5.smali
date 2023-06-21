.class Lcom/kingroot/kinguser/bbo$5;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/bbo;->removeLogsChangeListener(Lcom/kingroot/kinguser/root/log/ILogsChangeListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic bfn:Lcom/kingroot/kinguser/bbo;

.field final synthetic bfo:Lcom/kingroot/kinguser/root/log/ILogsChangeListener;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/bbo;Lcom/kingroot/kinguser/root/log/ILogsChangeListener;)V
    .locals 0

    .prologue
    .line 118
    iput-object p1, p0, Lcom/kingroot/kinguser/bbo$5;->bfn:Lcom/kingroot/kinguser/bbo;

    iput-object p2, p0, Lcom/kingroot/kinguser/bbo$5;->bfo:Lcom/kingroot/kinguser/root/log/ILogsChangeListener;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 121
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 122
    invoke-static {}, Lcom/kingroot/kinguser/bbq;->WA()Lcom/kingroot/kinguser/bbq;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/bbo$5;->bfo:Lcom/kingroot/kinguser/root/log/ILogsChangeListener;

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/bbq;->removeLogsChangeListener(Lcom/kingroot/kinguser/root/log/ILogsChangeListener;)V

    .line 123
    return-void
.end method
