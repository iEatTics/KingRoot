.class public Lcom/kingroot/kinguser/bdl$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/bdl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public bji:Ljava/lang/String;

.field public category:Ljava/lang/String;

.field public pkgName:Ljava/lang/String;

.field public priority:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static kU(Ljava/lang/String;)Lcom/kingroot/kinguser/bdl$a;
    .locals 5
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 45
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 72
    :cond_0
    :goto_0
    return-object v0

    .line 46
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 49
    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 50
    array-length v3, v2

    const/4 v4, 0x4

    if-lt v3, v4, :cond_0

    .line 51
    array-length v3, v2

    :goto_1
    if-ge v1, v3, :cond_2

    aget-object v4, v2, v1

    .line 52
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 51
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 56
    :cond_2
    new-instance v1, Lcom/kingroot/kinguser/bdl$a;

    invoke-direct {v1}, Lcom/kingroot/kinguser/bdl$a;-><init>()V

    .line 58
    const/4 v3, 0x0

    :try_start_0
    aget-object v3, v2, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, v1, Lcom/kingroot/kinguser/bdl$a;->priority:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    const/4 v0, 0x1

    aget-object v0, v2, v0

    iput-object v0, v1, Lcom/kingroot/kinguser/bdl$a;->category:Ljava/lang/String;

    .line 67
    const/4 v0, 0x2

    aget-object v0, v2, v0

    iput-object v0, v1, Lcom/kingroot/kinguser/bdl$a;->pkgName:Ljava/lang/String;

    .line 70
    const/4 v0, 0x3

    aget-object v0, v2, v0

    iput-object v0, v1, Lcom/kingroot/kinguser/bdl$a;->bji:Ljava/lang/String;

    move-object v0, v1

    .line 72
    goto :goto_0

    .line 59
    :catch_0
    move-exception v1

    goto :goto_0
.end method
