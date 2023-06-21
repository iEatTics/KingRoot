.class public final Lcom/kingroot/kinguser/gi;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final qt:[Ljava/lang/String;

.field private static qu:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 22
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "398910"

    aput-object v2, v0, v1

    sput-object v0, Lcom/kingroot/kinguser/gi;->qt:[Ljava/lang/String;

    .line 26
    const/4 v0, 0x0

    sput-object v0, Lcom/kingroot/kinguser/gi;->qu:Landroid/content/SharedPreferences;

    return-void
.end method

.method static a(J)V
    .locals 2

    .prologue
    .line 46
    sget-object v0, Lcom/kingroot/kinguser/gi;->qu:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "last_daily_report_time"

    invoke-interface {v0, v1, p0, p1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 47
    return-void
.end method

.method static aA()J
    .locals 10

    .prologue
    .line 50
    const-string v0, "last_daily_report_time"

    .line 51
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 52
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v4

    const-wide v6, 0x418b774000000000L    # 5.76E7

    mul-double/2addr v4, v6

    double-to-long v4, v4

    .line 53
    sub-long v4, v2, v4

    .line 54
    sget-object v1, Lcom/kingroot/kinguser/gi;->qu:Landroid/content/SharedPreferences;

    invoke-interface {v1, v0, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    .line 57
    sub-long/2addr v2, v6

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    const-wide/32 v8, 0x36ee800

    cmp-long v1, v2, v8

    if-ltz v1, :cond_0

    .line 58
    invoke-static {}, Lcom/kingroot/kinguser/gi;->aB()V

    .line 60
    :cond_0
    sget-object v1, Lcom/kingroot/kinguser/gi;->qu:Landroid/content/SharedPreferences;

    invoke-interface {v1, v0}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 61
    invoke-static {v4, v5}, Lcom/kingroot/kinguser/gi;->a(J)V

    .line 63
    :cond_1
    return-wide v6
.end method

.method private static aB()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 67
    sget-object v2, Lcom/kingroot/kinguser/gi;->qt:[Ljava/lang/String;

    array-length v3, v2

    move v0, v1

    :goto_0
    if-ge v0, v3, :cond_0

    aget-object v4, v2, v0

    .line 69
    sget-object v5, Lcom/kingroot/kinguser/gi;->qu:Landroid/content/SharedPreferences;

    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    invoke-interface {v5, v4, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 67
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 71
    :cond_0
    return-void
.end method

.method public static ae()V
    .locals 3

    .prologue
    .line 30
    invoke-static {}, Lcom/tencent/tps/client/AbsTPSClientBase;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "spm"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lcom/kingroot/kinguser/gi;->qu:Landroid/content/SharedPreferences;

    .line 32
    return-void
.end method

.method public static ai(Ljava/lang/String;)I
    .locals 2

    .prologue
    .line 42
    sget-object v0, Lcom/kingroot/kinguser/gi;->qu:Landroid/content/SharedPreferences;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static i(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 38
    sget-object v0, Lcom/kingroot/kinguser/gi;->qu:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-static {p0}, Lcom/kingroot/kinguser/gi;->ai(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-interface {v0, p0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 39
    return-void
.end method
