.class Lcom/kingroot/kinguser/avc$2;
.super Lcom/kingroot/kinguser/bek;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/avc;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic aTn:Lcom/kingroot/kinguser/avc;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/avc;)V
    .locals 0

    .prologue
    .line 55
    iput-object p1, p0, Lcom/kingroot/kinguser/avc$2;->aTn:Lcom/kingroot/kinguser/avc;

    invoke-direct {p0}, Lcom/kingroot/kinguser/bek;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 58
    invoke-super {p0}, Lcom/kingroot/kinguser/bek;->run()V

    .line 59
    iget-object v1, p0, Lcom/kingroot/kinguser/avc$2;->aTn:Lcom/kingroot/kinguser/avc;

    monitor-enter v1

    .line 60
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/avc$2;->aTn:Lcom/kingroot/kinguser/avc;

    invoke-static {v0}, Lcom/kingroot/kinguser/avc;->a(Lcom/kingroot/kinguser/avc;)V

    .line 61
    monitor-exit v1

    .line 63
    return-void

    .line 61
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
