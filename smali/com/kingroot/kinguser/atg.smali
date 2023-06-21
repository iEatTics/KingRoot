.class public Lcom/kingroot/kinguser/atg;
.super Lcom/kingroot/kinguser/aou;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingroot/kinguser/atg$a;
    }
.end annotation


# static fields
.field private static final sInstance:Lcom/kingroot/kinguser/cce;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/kingroot/kinguser/cce",
            "<",
            "Lcom/kingroot/kinguser/atg;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    new-instance v0, Lcom/kingroot/kinguser/atg$1;

    invoke-direct {v0}, Lcom/kingroot/kinguser/atg$1;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/atg;->sInstance:Lcom/kingroot/kinguser/cce;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/kingroot/kinguser/aou;-><init>()V

    .line 38
    return-void
.end method

.method synthetic constructor <init>(Lcom/kingroot/kinguser/atg$1;)V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/kingroot/kinguser/atg;-><init>()V

    return-void
.end method

.method public static OX()Lcom/kingroot/kinguser/atg;
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lcom/kingroot/kinguser/atg;->sInstance:Lcom/kingroot/kinguser/cce;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/cce;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/atg;

    return-object v0
.end method


# virtual methods
.method public IK()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<+",
            "Lcom/kingroot/kinguser/aov;",
            ">;"
        }
    .end annotation

    .prologue
    .line 55
    const-class v0, Lcom/kingroot/kinguser/atg$a;

    return-object v0
.end method
