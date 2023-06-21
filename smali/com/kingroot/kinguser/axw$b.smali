.class Lcom/kingroot/kinguser/axw$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/axw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# instance fields
.field bcl:Ljava/lang/String;

.field bcm:Ljava/lang/String;

.field bcn:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 149
    iput-object p1, p0, Lcom/kingroot/kinguser/axw$b;->bcl:Ljava/lang/String;

    .line 150
    iput-object p2, p0, Lcom/kingroot/kinguser/axw$b;->bcm:Ljava/lang/String;

    .line 151
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kingroot/kinguser/axw$b;->bcn:Z

    .line 152
    return-void
.end method
