.class public final Lcom/kingroot/kinguser/bvn;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static bQa:[Lcom/kingroot/kinguser/bvn;

.field public static final bQb:Lcom/kingroot/kinguser/bvn;

.field public static final bQc:Lcom/kingroot/kinguser/bvn;

.field public static final bQd:Lcom/kingroot/kinguser/bvn;

.field static final synthetic lo:Z


# instance fields
.field private __T:Ljava/lang/String;

.field private __value:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 9
    const-class v0, Lcom/kingroot/kinguser/bvn;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/kingroot/kinguser/bvn;->lo:Z

    .line 11
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/kingroot/kinguser/bvn;

    sput-object v0, Lcom/kingroot/kinguser/bvn;->bQa:[Lcom/kingroot/kinguser/bvn;

    .line 16
    new-instance v0, Lcom/kingroot/kinguser/bvn;

    const-string v3, "CPUSH_NONE"

    invoke-direct {v0, v2, v2, v3}, Lcom/kingroot/kinguser/bvn;-><init>(IILjava/lang/String;)V

    sput-object v0, Lcom/kingroot/kinguser/bvn;->bQb:Lcom/kingroot/kinguser/bvn;

    .line 18
    new-instance v0, Lcom/kingroot/kinguser/bvn;

    const-string v2, "CPUSH_PUSH"

    invoke-direct {v0, v1, v1, v2}, Lcom/kingroot/kinguser/bvn;-><init>(IILjava/lang/String;)V

    sput-object v0, Lcom/kingroot/kinguser/bvn;->bQc:Lcom/kingroot/kinguser/bvn;

    .line 20
    new-instance v0, Lcom/kingroot/kinguser/bvn;

    const-string v1, "CPUSH_HIS"

    invoke-direct {v0, v4, v4, v1}, Lcom/kingroot/kinguser/bvn;-><init>(IILjava/lang/String;)V

    sput-object v0, Lcom/kingroot/kinguser/bvn;->bQd:Lcom/kingroot/kinguser/bvn;

    return-void

    :cond_0
    move v0, v2

    .line 9
    goto :goto_0
.end method

.method private constructor <init>(IILjava/lang/String;)V
    .locals 1

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/bvn;->__T:Ljava/lang/String;

    .line 60
    iput-object p3, p0, Lcom/kingroot/kinguser/bvn;->__T:Ljava/lang/String;

    .line 61
    iput p2, p0, Lcom/kingroot/kinguser/bvn;->__value:I

    .line 62
    sget-object v0, Lcom/kingroot/kinguser/bvn;->bQa:[Lcom/kingroot/kinguser/bvn;

    aput-object p0, v0, p1

    .line 63
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/kingroot/kinguser/bvn;->__T:Ljava/lang/String;

    return-object v0
.end method

.method public value()I
    .locals 1

    .prologue
    .line 50
    iget v0, p0, Lcom/kingroot/kinguser/bvn;->__value:I

    return v0
.end method
