.class final Lcom/kingroot/kinguser/bbx$1;
.super Lcom/kingroot/kinguser/bek;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/bbx;->WW()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/kingroot/kinguser/bek;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 21
    invoke-super {p0}, Lcom/kingroot/kinguser/bek;->run()V

    .line 22
    const/4 v0, 0x4

    invoke-static {v0}, Lcom/kingroot/kinguser/bby;->hW(I)V

    .line 23
    invoke-static {}, Lcom/kingroot/kinguser/bbx;->jJ()V

    .line 24
    return-void
.end method
