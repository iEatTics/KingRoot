.class Lcom/kingroot/kinguser/bcq$1;
.super Lcom/kingroot/kinguser/bek;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/bcq;->ig(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic biy:I

.field final synthetic biz:Lcom/kingroot/kinguser/bcq;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/bcq;I)V
    .locals 0

    .prologue
    .line 199
    iput-object p1, p0, Lcom/kingroot/kinguser/bcq$1;->biz:Lcom/kingroot/kinguser/bcq;

    iput p2, p0, Lcom/kingroot/kinguser/bcq$1;->biy:I

    invoke-direct {p0}, Lcom/kingroot/kinguser/bek;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 202
    invoke-super {p0}, Lcom/kingroot/kinguser/bek;->run()V

    .line 204
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 205
    iget-object v0, p0, Lcom/kingroot/kinguser/bcq$1;->biz:Lcom/kingroot/kinguser/bcq;

    invoke-static {v0}, Lcom/kingroot/kinguser/bcq;->a(Lcom/kingroot/kinguser/bcq;)J

    move-result-wide v0

    .line 206
    iget-object v4, p0, Lcom/kingroot/kinguser/bcq$1;->biz:Lcom/kingroot/kinguser/bcq;

    invoke-virtual {v4}, Lcom/kingroot/kinguser/bcq;->XN()J

    move-result-wide v4

    invoke-static/range {v0 .. v5}, Lcom/kingroot/kinguser/adk;->b(JJJ)Z

    move-result v0

    if-nez v0, :cond_0

    .line 212
    :goto_0
    return-void

    .line 211
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/bcq$1;->biz:Lcom/kingroot/kinguser/bcq;

    iget-object v1, p0, Lcom/kingroot/kinguser/bcq$1;->biz:Lcom/kingroot/kinguser/bcq;

    invoke-virtual {v1}, Lcom/kingroot/kinguser/bcq;->XK()Ljava/util/List;

    move-result-object v1

    iget v2, p0, Lcom/kingroot/kinguser/bcq$1;->biy:I

    invoke-virtual {v0, v1, v2}, Lcom/kingroot/kinguser/bcq;->h(Ljava/util/List;I)Z

    goto :goto_0
.end method
