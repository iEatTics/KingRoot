.class public Lcom/kingroot/kinguser/ky$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/ky;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private uA:Ljava/lang/String;

.field private uw:Ljava/lang/String;

.field private ux:Ljava/lang/String;

.field private uy:Ljava/lang/String;

.field private uz:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/kingroot/kinguser/ky$a;->uw:Ljava/lang/String;

    .line 34
    return-void
.end method

.method static synthetic a(Lcom/kingroot/kinguser/ky$a;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/kingroot/kinguser/ky$a;->uw:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/kingroot/kinguser/ky$a;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/kingroot/kinguser/ky$a;->ux:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcom/kingroot/kinguser/ky$a;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/kingroot/kinguser/ky$a;->uy:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lcom/kingroot/kinguser/ky$a;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/kingroot/kinguser/ky$a;->uz:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic e(Lcom/kingroot/kinguser/ky$a;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/kingroot/kinguser/ky$a;->uA:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public aV(Ljava/lang/String;)Lcom/kingroot/kinguser/ky$a;
    .locals 0

    .prologue
    .line 37
    iput-object p1, p0, Lcom/kingroot/kinguser/ky$a;->ux:Ljava/lang/String;

    .line 38
    return-object p0
.end method

.method public aW(Ljava/lang/String;)Lcom/kingroot/kinguser/ky$a;
    .locals 0

    .prologue
    .line 42
    iput-object p1, p0, Lcom/kingroot/kinguser/ky$a;->uy:Ljava/lang/String;

    .line 43
    return-object p0
.end method

.method public aX(Ljava/lang/String;)Lcom/kingroot/kinguser/ky$a;
    .locals 0

    .prologue
    .line 47
    iput-object p1, p0, Lcom/kingroot/kinguser/ky$a;->uz:Ljava/lang/String;

    .line 48
    return-object p0
.end method

.method public aY(Ljava/lang/String;)Lcom/kingroot/kinguser/ky$a;
    .locals 0

    .prologue
    .line 52
    iput-object p1, p0, Lcom/kingroot/kinguser/ky$a;->uA:Ljava/lang/String;

    .line 53
    return-object p0
.end method

.method public do()Lcom/kingroot/kinguser/ky;
    .locals 2

    .prologue
    .line 57
    new-instance v0, Lcom/kingroot/kinguser/ky;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/kingroot/kinguser/ky;-><init>(Lcom/kingroot/kinguser/ky$a;Lcom/kingroot/kinguser/kz;)V

    return-object v0
.end method
