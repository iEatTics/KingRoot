.class final Lcom/kingroot/kinguser/aer$2;
.super Lcom/kingroot/kinguser/bek;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/aer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/kingroot/kinguser/bek;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .prologue
    .line 42
    invoke-super {p0}, Lcom/kingroot/kinguser/bek;->run()V

    .line 43
    invoke-static {}, Lcom/kingroot/kinguser/aer;->uC()Z

    .line 44
    return-void
.end method
