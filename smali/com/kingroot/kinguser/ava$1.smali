.class final Lcom/kingroot/kinguser/ava$1;
.super Lcom/kingroot/kinguser/bek;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/ava;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/kingroot/kinguser/bek;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .prologue
    .line 64
    invoke-super {p0}, Lcom/kingroot/kinguser/bek;->run()V

    .line 66
    invoke-static {}, Lcom/kingroot/kinguser/ava;->Rh()V

    .line 67
    return-void
.end method
