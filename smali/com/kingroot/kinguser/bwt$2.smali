.class Lcom/kingroot/kinguser/bwt$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/bwt;->aiX()Ljava/util/Map;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Ljava/io/File;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic bSG:Lcom/kingroot/kinguser/bwt;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/bwt;)V
    .locals 0

    .prologue
    .line 159
    iput-object p1, p0, Lcom/kingroot/kinguser/bwt$2;->bSG:Lcom/kingroot/kinguser/bwt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 159
    check-cast p1, Ljava/io/File;

    check-cast p2, Ljava/io/File;

    invoke-virtual {p0, p1, p2}, Lcom/kingroot/kinguser/bwt$2;->e(Ljava/io/File;Ljava/io/File;)I

    move-result v0

    return v0
.end method

.method public e(Ljava/io/File;Ljava/io/File;)I
    .locals 4

    .prologue
    .line 161
    invoke-static {p1}, Lcom/kingroot/kinguser/bwt;->N(Ljava/io/File;)J

    move-result-wide v0

    .line 162
    invoke-static {p2}, Lcom/kingroot/kinguser/bwt;->N(Ljava/io/File;)J

    move-result-wide v2

    .line 163
    sub-long v0, v2, v0

    long-to-int v0, v0

    return v0
.end method
