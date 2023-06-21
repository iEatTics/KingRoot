.class public Lcom/kingroot/kinguser/avf;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static jr(Ljava/lang/String;)Lcom/kingroot/kinguser/avb;
    .locals 2

    .prologue
    .line 11
    const/4 v0, 0x0

    .line 12
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 26
    :cond_0
    :goto_0
    return-object v0

    .line 16
    :cond_1
    const-string v1, "kusw:"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 17
    new-instance v0, Lcom/kingroot/kinguser/avi;

    invoke-direct {v0}, Lcom/kingroot/kinguser/avi;-><init>()V

    .line 22
    :cond_2
    :goto_1
    if-eqz v0, :cond_0

    .line 23
    invoke-virtual {v0, p0}, Lcom/kingroot/kinguser/avb;->parse(Ljava/lang/String;)V

    goto :goto_0

    .line 18
    :cond_3
    const-string v1, "kurc:"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 19
    new-instance v0, Lcom/kingroot/kinguser/avg;

    invoke-direct {v0}, Lcom/kingroot/kinguser/avg;-><init>()V

    goto :goto_1
.end method
