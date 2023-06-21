.class public Lcom/kingroot/kinguser/cgb;
.super Lcom/kingroot/kinguser/cec;
.source "SourceFile"

# interfaces
.implements Lcom/kingroot/kinguser/cgd;


# instance fields
.field private cea:Lcom/kingroot/kinguser/bzi;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/kingroot/kinguser/cec;-><init>()V

    return-void
.end method


# virtual methods
.method public I(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 21
    new-instance v0, Lcom/kingroot/kinguser/bzi;

    invoke-direct {v0}, Lcom/kingroot/kinguser/bzi;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/cgb;->cea:Lcom/kingroot/kinguser/bzi;

    .line 22
    iget-object v0, p0, Lcom/kingroot/kinguser/cgb;->cea:Lcom/kingroot/kinguser/bzi;

    invoke-virtual {v0, p1}, Lcom/kingroot/kinguser/bzi;->I(Landroid/content/Context;)V

    .line 23
    iget-object v0, p0, Lcom/kingroot/kinguser/cgb;->cea:Lcom/kingroot/kinguser/bzi;

    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/cgb;->a(Lcom/kingroot/kinguser/cdw;)V

    .line 24
    return-void
.end method

.method public a(Ljava/lang/Runnable;Ljava/lang/String;J)V
    .locals 9

    .prologue
    .line 96
    iget-object v1, p0, Lcom/kingroot/kinguser/cgb;->cea:Lcom/kingroot/kinguser/bzi;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    invoke-virtual/range {v1 .. v7}, Lcom/kingroot/kinguser/bzi;->a(Ljava/lang/Runnable;Ljava/lang/String;JZLjava/lang/Object;)V

    .line 97
    return-void
.end method

.method public b(Ljava/lang/Runnable;Ljava/lang/String;J)V
    .locals 9

    .prologue
    .line 119
    iget-object v1, p0, Lcom/kingroot/kinguser/cgb;->cea:Lcom/kingroot/kinguser/bzi;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    invoke-virtual/range {v1 .. v7}, Lcom/kingroot/kinguser/bzi;->b(Ljava/lang/Runnable;Ljava/lang/String;JZLjava/lang/Object;)V

    .line 120
    return-void
.end method

.method public e(Ljava/lang/String;IJ)Landroid/os/HandlerThread;
    .locals 1

    .prologue
    .line 272
    iget-object v0, p0, Lcom/kingroot/kinguser/cgb;->cea:Lcom/kingroot/kinguser/bzi;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/kingroot/kinguser/bzi;->e(Ljava/lang/String;IJ)Landroid/os/HandlerThread;

    move-result-object v0

    return-object v0
.end method
