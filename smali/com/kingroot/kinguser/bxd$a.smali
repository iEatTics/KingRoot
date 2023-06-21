.class Lcom/kingroot/kinguser/bxd$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/bxd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field private final bTe:Z

.field private final bTf:Ljava/lang/String;


# direct methods
.method public constructor <init>(ZLjava/lang/String;)V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-boolean p1, p0, Lcom/kingroot/kinguser/bxd$a;->bTe:Z

    .line 53
    iput-object p2, p0, Lcom/kingroot/kinguser/bxd$a;->bTf:Ljava/lang/String;

    .line 54
    return-void
.end method


# virtual methods
.method ajr()Z
    .locals 1

    .prologue
    .line 57
    iget-boolean v0, p0, Lcom/kingroot/kinguser/bxd$a;->bTe:Z

    return v0
.end method

.method ajs()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/kingroot/kinguser/bxd$a;->bTf:Ljava/lang/String;

    return-object v0
.end method
