.class public Lcom/kingroot/kinguser/nc;
.super Lcom/kingroot/kinguser/je;
.source "SourceFile"


# static fields
.field private static wP:Lcom/kingroot/kinguser/nc;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    new-instance v0, Lcom/kingroot/kinguser/nc;

    invoke-direct {v0}, Lcom/kingroot/kinguser/nc;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/nc;->wP:Lcom/kingroot/kinguser/nc;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 17
    const-string v0, "uranus_stat.dat"

    invoke-direct {p0, v0}, Lcom/kingroot/kinguser/je;-><init>(Ljava/lang/String;)V

    .line 18
    return-void
.end method

.method public static eX()Lcom/kingroot/kinguser/nc;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/kingroot/kinguser/nc;->wP:Lcom/kingroot/kinguser/nc;

    return-object v0
.end method
