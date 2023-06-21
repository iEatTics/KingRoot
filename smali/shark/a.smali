.class public final Lshark/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static bXb:[Lshark/a;

.field public static final bXc:Lshark/a;

.field public static final bXd:Lshark/a;

.field public static final bXe:Lshark/a;

.field public static final bXf:Lshark/a;


# instance fields
.field private f:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 9
    const-class v0, Lshark/a;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    .line 11
    const/4 v0, 0x6

    new-array v0, v0, [Lshark/a;

    sput-object v0, Lshark/a;->bXb:[Lshark/a;

    .line 16
    new-instance v0, Lshark/a;

    const-string v1, "CT_NONE"

    invoke-direct {v0, v2, v2, v1}, Lshark/a;-><init>(IILjava/lang/String;)V

    sput-object v0, Lshark/a;->bXc:Lshark/a;

    .line 18
    new-instance v0, Lshark/a;

    const-string v1, "CT_GPRS"

    invoke-direct {v0, v3, v3, v1}, Lshark/a;-><init>(IILjava/lang/String;)V

    .line 20
    new-instance v0, Lshark/a;

    const-string v1, "CT_WIFI"

    invoke-direct {v0, v4, v4, v1}, Lshark/a;-><init>(IILjava/lang/String;)V

    sput-object v0, Lshark/a;->bXd:Lshark/a;

    .line 22
    new-instance v0, Lshark/a;

    const-string v1, "CT_GPRS_WAP"

    invoke-direct {v0, v5, v5, v1}, Lshark/a;-><init>(IILjava/lang/String;)V

    sput-object v0, Lshark/a;->bXe:Lshark/a;

    .line 24
    new-instance v0, Lshark/a;

    const-string v1, "CT_GPRS_NET"

    invoke-direct {v0, v6, v6, v1}, Lshark/a;-><init>(IILjava/lang/String;)V

    sput-object v0, Lshark/a;->bXf:Lshark/a;

    .line 26
    new-instance v0, Lshark/a;

    const/4 v1, 0x5

    const/4 v2, 0x5

    const-string v3, "CT_3G_NET"

    invoke-direct {v0, v1, v2, v3}, Lshark/a;-><init>(IILjava/lang/String;)V

    return-void
.end method

.method private constructor <init>(IILjava/lang/String;)V
    .locals 1

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Lshark/a;->f:Ljava/lang/String;

    .line 66
    iput-object p3, p0, Lshark/a;->f:Ljava/lang/String;

    .line 67
    sget-object v0, Lshark/a;->bXb:[Lshark/a;

    aput-object p0, v0, p1

    .line 69
    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lshark/a;->f:Ljava/lang/String;

    return-object v0
.end method
