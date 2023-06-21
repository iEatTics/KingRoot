.class public Lcom/kingroot/kinguser/rv;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static Gn:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Lcom/kingroot/kinguser/rv;->Gn:[B

    return-void
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/SharedPreferences;
    .locals 1

    .prologue
    .line 86
    invoke-virtual {p0, p1, p2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method public static cD(Ljava/lang/String;)Lcom/kingroot/kinguser/sk;
    .locals 1

    .prologue
    .line 54
    invoke-static {p0}, Lcom/kingroot/kinguser/sp;->cH(Ljava/lang/String;)Lcom/kingroot/kinguser/sk;

    move-result-object v0

    return-object v0
.end method

.method public static cE(Ljava/lang/String;)Lcom/kingroot/kinguser/sk;
    .locals 1

    .prologue
    .line 63
    invoke-static {p0}, Lcom/kingroot/kinguser/sl;->cH(Ljava/lang/String;)Lcom/kingroot/kinguser/sk;

    move-result-object v0

    return-object v0
.end method

.method public static h(Landroid/content/Context;Ljava/lang/String;)Landroid/content/SharedPreferences;
    .locals 1

    .prologue
    .line 44
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/kingroot/kinguser/rv;->b(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method public static i(Landroid/content/Context;Ljava/lang/String;)Landroid/content/SharedPreferences;
    .locals 1

    .prologue
    .line 74
    invoke-static {p0, p1}, Lcom/kingroot/kinguser/sr;->h(Landroid/content/Context;Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method public static jc()Lcom/kingroot/kinguser/su;
    .locals 1

    .prologue
    .line 132
    invoke-static {}, Lcom/kingroot/kinguser/sy;->jv()Lcom/kingroot/kinguser/su;

    move-result-object v0

    return-object v0
.end method
