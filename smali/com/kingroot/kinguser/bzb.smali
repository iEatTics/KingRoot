.class public final Lcom/kingroot/kinguser/bzb;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final NAME:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 16
    new-instance v0, Ljava/lang/String;

    const-string v1, "414553"

    invoke-static {v1}, Lcom/kingroot/kinguser/bzd;->dJ(Ljava/lang/String;)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    sput-object v0, Lcom/kingroot/kinguser/bzb;->NAME:Ljava/lang/String;

    return-void
.end method

.method public static G([B)[B
    .locals 1

    .prologue
    .line 53
    invoke-static {p0}, Lcom/kingroot/kinguser/byz;->E([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    return-object v0
.end method
