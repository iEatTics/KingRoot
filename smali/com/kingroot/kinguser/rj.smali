.class public Lcom/kingroot/kinguser/rj;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingroot/kinguser/rj$a;
    }
.end annotation


# static fields
.field private static FT:Ljava/lang/String;

.field private static FU:Ljava/lang/String;

.field private static FV:Ljava/lang/String;

.field private static final FW:Lcom/kingroot/kinguser/wo;

.field static final synthetic lo:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 25
    const-class v0, Lcom/kingroot/kinguser/rj;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/kingroot/kinguser/rj;->lo:Z

    .line 28
    sput-object v1, Lcom/kingroot/kinguser/rj;->FT:Ljava/lang/String;

    .line 31
    sput-object v1, Lcom/kingroot/kinguser/rj;->FU:Ljava/lang/String;

    .line 32
    sput-object v1, Lcom/kingroot/kinguser/rj;->FV:Ljava/lang/String;

    .line 41
    new-instance v0, Lcom/kingroot/kinguser/rj$1;

    invoke-direct {v0}, Lcom/kingroot/kinguser/rj$1;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/rj;->FW:Lcom/kingroot/kinguser/wo;

    return-void

    .line 25
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/kingroot/kinguser/rj$a;)V
    .locals 3

    .prologue
    .line 65
    sget-object v0, Lcom/kingroot/kinguser/rj;->FW:Lcom/kingroot/kinguser/wo;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/wo;->c([Ljava/lang/Object;)Z

    .line 66
    return-void
.end method

.method private static b(Lcom/kingroot/kinguser/rj$a;)Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 75
    invoke-static {}, Lcom/kingroot/kinguser/rj;->iz()Ljava/lang/String;

    move-result-object v3

    .line 76
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    .line 93
    :goto_0
    return v0

    .line 82
    :cond_0
    if-eqz p0, :cond_1

    .line 83
    invoke-interface {p0, v3}, Lcom/kingroot/kinguser/rj$a;->cm(Ljava/lang/String;)V

    .line 86
    :cond_1
    sget-object v0, Lcom/kingroot/kinguser/rj;->FU:Ljava/lang/String;

    if-nez v0, :cond_3

    const-string v0, "191240FCB048127DB9110D1B30537FDE"

    .line 87
    :goto_1
    sget-object v1, Lcom/kingroot/kinguser/rj;->FV:Ljava/lang/String;

    if-nez v1, :cond_4

    const-string v1, "7CC749CFC0FB5677E6ABA342EDBDBA5A"

    .line 88
    :goto_2
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_2
    move v0, v2

    .line 90
    goto :goto_0

    .line 86
    :cond_3
    sget-object v0, Lcom/kingroot/kinguser/rj;->FU:Ljava/lang/String;

    goto :goto_1

    .line 87
    :cond_4
    sget-object v1, Lcom/kingroot/kinguser/rj;->FV:Ljava/lang/String;

    goto :goto_2

    .line 93
    :cond_5
    const/4 v0, 0x1

    goto :goto_0
.end method

.method static synthetic c(Lcom/kingroot/kinguser/rj$a;)Z
    .locals 1

    .prologue
    .line 25
    invoke-static {p0}, Lcom/kingroot/kinguser/rj;->b(Lcom/kingroot/kinguser/rj$a;)Z

    move-result v0

    return v0
.end method

.method private static iz()Ljava/lang/String;
    .locals 3

    .prologue
    .line 102
    sget-object v0, Lcom/kingroot/kinguser/rj;->FT:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 104
    sget-object v0, Lcom/kingroot/kinguser/rj;->FT:Ljava/lang/String;

    .line 130
    :goto_0
    return-object v0

    .line 110
    :cond_0
    invoke-static {}, Lcom/kingroot/kinguser/bzt;->ge()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 111
    iget v0, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 114
    invoke-static {v0}, Lcom/kingroot/kinguser/aaz;->ca(I)Ljava/lang/String;

    move-result-object v0

    .line 115
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 117
    iget-object v0, v1, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-static {v0}, Lcom/kingroot/kinguser/aaz;->ea(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 118
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 120
    invoke-static {}, Lcom/kingroot/kinguser/aaz;->qy()Ljava/lang/String;

    move-result-object v0

    .line 125
    :cond_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x20

    if-ne v1, v2, :cond_2

    .line 126
    sput-object v0, Lcom/kingroot/kinguser/rj;->FT:Ljava/lang/String;

    .line 130
    :cond_2
    sget-object v0, Lcom/kingroot/kinguser/rj;->FT:Ljava/lang/String;

    goto :goto_0
.end method

.method public static u(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 35
    sget-boolean v0, Lcom/kingroot/kinguser/rj;->lo:Z

    if-nez v0, :cond_0

    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 36
    :cond_0
    sget-boolean v0, Lcom/kingroot/kinguser/rj;->lo:Z

    if-nez v0, :cond_1

    if-nez p1, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 37
    :cond_1
    sput-object p0, Lcom/kingroot/kinguser/rj;->FU:Ljava/lang/String;

    .line 38
    sput-object p1, Lcom/kingroot/kinguser/rj;->FV:Ljava/lang/String;

    .line 39
    return-void
.end method
