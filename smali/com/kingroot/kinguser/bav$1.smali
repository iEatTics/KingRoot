.class final Lcom/kingroot/kinguser/bav$1;
.super Lcom/kingroot/kinguser/bek;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/bav;->VO()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 135
    invoke-direct {p0}, Lcom/kingroot/kinguser/bek;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 138
    invoke-super {p0}, Lcom/kingroot/kinguser/bek;->run()V

    .line 139
    invoke-static {}, Lcom/kingroot/kinguser/bav;->wa()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 141
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/kingroot/kinguser/bav;->cL(Z)V

    .line 144
    invoke-static {}, Lcom/kingroot/kinguser/bav;->Vb()V

    .line 146
    :cond_0
    return-void
.end method
