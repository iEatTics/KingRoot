.class final Lcom/kingroot/kinguser/bby$1;
.super Lcom/kingroot/kinguser/bek;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/bby;->WY()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/kingroot/kinguser/bek;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 31
    invoke-super {p0}, Lcom/kingroot/kinguser/bek;->run()V

    .line 33
    invoke-static {}, Lcom/kingroot/kinguser/bby;->jJ()V

    .line 35
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/kingroot/kinguser/bby;->hW(I)V

    .line 36
    return-void
.end method
