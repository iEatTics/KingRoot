.class public Landroid/support/v4/media/MediaBrowserCompatUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static areSameOptions(Landroid/os/Bundle;Landroid/os/Bundle;)Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    const/4 v4, -0x1

    .line 26
    if-ne p0, p1, :cond_1

    .line 38
    :cond_0
    :goto_0
    return v0

    .line 28
    :cond_1
    if-nez p0, :cond_3

    .line 29
    const-string v2, "android.media.browse.extra.PAGE"

    invoke-virtual {p1, v2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v4, :cond_2

    const-string v2, "android.media.browse.extra.PAGE_SIZE"

    .line 30
    invoke-virtual {p1, v2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-eq v2, v4, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0

    .line 31
    :cond_3
    if-nez p1, :cond_5

    .line 32
    const-string v2, "android.media.browse.extra.PAGE"

    invoke-virtual {p0, v2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v4, :cond_4

    const-string v2, "android.media.browse.extra.PAGE_SIZE"

    .line 33
    invoke-virtual {p0, v2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-eq v2, v4, :cond_0

    :cond_4
    move v0, v1

    goto :goto_0

    .line 35
    :cond_5
    const-string v2, "android.media.browse.extra.PAGE"

    invoke-virtual {p0, v2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    const-string v3, "android.media.browse.extra.PAGE"

    .line 36
    invoke-virtual {p1, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    if-ne v2, v3, :cond_6

    const-string v2, "android.media.browse.extra.PAGE_SIZE"

    .line 37
    invoke-virtual {p0, v2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    const-string v3, "android.media.browse.extra.PAGE_SIZE"

    .line 38
    invoke-virtual {p1, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    if-eq v2, v3, :cond_0

    :cond_6
    move v0, v1

    goto :goto_0
.end method

.method public static hasDuplicatedItems(Landroid/os/Bundle;Landroid/os/Bundle;)Z
    .locals 9

    .prologue
    const v2, 0x7fffffff

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v7, -0x1

    .line 43
    if-nez p0, :cond_3

    move v4, v7

    .line 44
    :goto_0
    if-nez p1, :cond_4

    move v8, v7

    .line 45
    :goto_1
    if-nez p0, :cond_5

    move v5, v7

    .line 47
    :goto_2
    if-nez p1, :cond_6

    move v6, v7

    .line 51
    :goto_3
    if-eq v4, v7, :cond_0

    if-ne v5, v7, :cond_7

    :cond_0
    move v4, v2

    move v5, v1

    .line 59
    :goto_4
    if-eq v8, v7, :cond_1

    if-ne v6, v7, :cond_8

    :cond_1
    move v3, v1

    .line 67
    :goto_5
    if-gt v5, v3, :cond_9

    if-gt v3, v4, :cond_9

    .line 72
    :cond_2
    :goto_6
    return v0

    .line 43
    :cond_3
    const-string v3, "android.media.browse.extra.PAGE"

    invoke-virtual {p0, v3, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    move v4, v3

    goto :goto_0

    .line 44
    :cond_4
    const-string v3, "android.media.browse.extra.PAGE"

    invoke-virtual {p1, v3, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    move v8, v3

    goto :goto_1

    .line 45
    :cond_5
    const-string v3, "android.media.browse.extra.PAGE_SIZE"

    .line 46
    invoke-virtual {p0, v3, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    move v5, v3

    goto :goto_2

    .line 47
    :cond_6
    const-string v3, "android.media.browse.extra.PAGE_SIZE"

    .line 48
    invoke-virtual {p1, v3, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    move v6, v3

    goto :goto_3

    .line 55
    :cond_7
    mul-int/2addr v4, v5

    .line 56
    add-int v3, v4, v5

    add-int/lit8 v3, v3, -0x1

    move v5, v4

    move v4, v3

    goto :goto_4

    .line 63
    :cond_8
    mul-int v3, v6, v8

    .line 64
    add-int v2, v3, v6

    add-int/lit8 v2, v2, -0x1

    goto :goto_5

    .line 69
    :cond_9
    if-gt v5, v2, :cond_a

    if-le v2, v4, :cond_2

    :cond_a
    move v0, v1

    .line 72
    goto :goto_6
.end method
