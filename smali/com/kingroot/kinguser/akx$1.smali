.class Lcom/kingroot/kinguser/akx$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kingroot/kinguser/aik;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/akx;->a(JLjava/lang/String;Ljava/lang/String;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic anx:Ljava/lang/String;

.field final synthetic any:I

.field final synthetic avJ:Ljava/lang/String;

.field final synthetic avK:J

.field final synthetic avL:J

.field final synthetic avM:Lcom/kingroot/kinguser/akx;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/akx;Ljava/lang/String;Ljava/lang/String;JIJ)V
    .locals 0

    .prologue
    .line 53
    iput-object p1, p0, Lcom/kingroot/kinguser/akx$1;->avM:Lcom/kingroot/kinguser/akx;

    iput-object p2, p0, Lcom/kingroot/kinguser/akx$1;->anx:Ljava/lang/String;

    iput-object p3, p0, Lcom/kingroot/kinguser/akx$1;->avJ:Ljava/lang/String;

    iput-wide p4, p0, Lcom/kingroot/kinguser/akx$1;->avK:J

    iput p6, p0, Lcom/kingroot/kinguser/akx$1;->any:I

    iput-wide p7, p0, Lcom/kingroot/kinguser/akx$1;->avL:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public o(Ljava/lang/Object;)V
    .locals 6

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 57
    instance-of v0, p1, Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_0

    .line 58
    check-cast p1, Landroid/database/sqlite/SQLiteDatabase;

    .line 59
    const-string v0, "delete from apps where pkgName=?"

    new-array v1, v4, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/kingroot/kinguser/akx$1;->anx:Ljava/lang/String;

    aput-object v2, v1, v3

    invoke-virtual {p1, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 61
    const-string v0, "insert into apps (pkgName, appName, rtime, rule, vtime) values (?,?,?,?,?)"

    .line 69
    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/kingroot/kinguser/akx$1;->anx:Ljava/lang/String;

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/kingroot/kinguser/akx$1;->avJ:Ljava/lang/String;

    aput-object v2, v1, v4

    const/4 v2, 0x2

    iget-wide v4, p0, Lcom/kingroot/kinguser/akx$1;->avK:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget v3, p0, Lcom/kingroot/kinguser/akx$1;->any:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    iget-wide v4, p0, Lcom/kingroot/kinguser/akx$1;->avL:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p1, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 72
    :cond_0
    return-void
.end method
