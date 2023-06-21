.class public Lcom/kingroot/kinguser/km;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kingroot/kinguser/ho;


# static fields
.field private static ub:Lcom/kingroot/kinguser/ho;


# instance fields
.field private tZ:I

.field private ua:Ljava/lang/String;


# direct methods
.method private constructor <init>(ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput p1, p0, Lcom/kingroot/kinguser/km;->tZ:I

    .line 14
    iput-object p2, p0, Lcom/kingroot/kinguser/km;->ua:Ljava/lang/String;

    .line 15
    return-void
.end method

.method public static da()Lcom/kingroot/kinguser/ho;
    .locals 3

    .prologue
    .line 18
    sget-object v0, Lcom/kingroot/kinguser/km;->ub:Lcom/kingroot/kinguser/ho;

    if-nez v0, :cond_0

    .line 19
    new-instance v0, Lcom/kingroot/kinguser/km;

    const/4 v1, 0x0

    const-string v2, ""

    invoke-direct {v0, v1, v2}, Lcom/kingroot/kinguser/km;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/kingroot/kinguser/km;->ub:Lcom/kingroot/kinguser/ho;

    .line 20
    :cond_0
    sget-object v0, Lcom/kingroot/kinguser/km;->ub:Lcom/kingroot/kinguser/ho;

    return-object v0
.end method

.method public static g(ILjava/lang/String;)Lcom/kingroot/kinguser/ho;
    .locals 1

    .prologue
    .line 24
    new-instance v0, Lcom/kingroot/kinguser/km;

    invoke-direct {v0, p0, p1}, Lcom/kingroot/kinguser/km;-><init>(ILjava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public be()I
    .locals 1

    .prologue
    .line 29
    iget v0, p0, Lcom/kingroot/kinguser/km;->tZ:I

    return v0
.end method

.method public message()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/kingroot/kinguser/km;->ua:Ljava/lang/String;

    return-object v0
.end method
