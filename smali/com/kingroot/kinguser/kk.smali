.class public Lcom/kingroot/kinguser/kk;
.super Lcom/kingroot/kinguser/je;
.source "SourceFile"


# static fields
.field private static tY:Lcom/kingroot/kinguser/kk;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    new-instance v0, Lcom/kingroot/kinguser/kk;

    invoke-direct {v0}, Lcom/kingroot/kinguser/kk;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/kk;->tY:Lcom/kingroot/kinguser/kk;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 14
    const-string v0, "uranus_prop.dat"

    invoke-direct {p0, v0}, Lcom/kingroot/kinguser/je;-><init>(Ljava/lang/String;)V

    .line 15
    return-void
.end method

.method public static cY()Lcom/kingroot/kinguser/kk;
    .locals 1

    .prologue
    .line 18
    sget-object v0, Lcom/kingroot/kinguser/kk;->tY:Lcom/kingroot/kinguser/kk;

    return-object v0
.end method
