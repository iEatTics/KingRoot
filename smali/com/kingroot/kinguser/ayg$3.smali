.class final Lcom/kingroot/kinguser/ayg$3;
.super Lcom/kingroot/kinguser/bek;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/ayg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 304
    invoke-direct {p0}, Lcom/kingroot/kinguser/bek;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 307
    invoke-super {p0}, Lcom/kingroot/kinguser/bek;->run()V

    .line 308
    invoke-static {}, Lcom/kingroot/kinguser/ayg;->Vc()Z

    move-result v0

    if-nez v0, :cond_0

    .line 311
    :cond_0
    return-void
.end method
