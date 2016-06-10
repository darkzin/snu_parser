##################################################
# test
#

    #-----------------------------------------
    # text section
    #
    .text
    .align 4

    # entry point and pre-defined functions
    .global main
    .extern DIM
    .extern DOFS
    .extern ReadInt
    .extern WriteInt
    .extern WriteStr
    .extern WriteChar
    .extern WriteLn

    # scope dummyINTfunc
dummyINTfunc:
    # stack offsets:

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $0, %esp                # make room for locals

    # function body

l_dummyINTfunc_exit:
    # epilogue
    addl    $0, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope dummyCHARfunc
dummyCHARfunc:
    # stack offsets:

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $0, %esp                # make room for locals

    # function body

l_dummyCHARfunc_exit:
    # epilogue
    addl    $0, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope dummyBOOLfunc
dummyBOOLfunc:
    # stack offsets:

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $0, %esp                # make room for locals

    # function body

l_dummyBOOLfunc_exit:
    # epilogue
    addl    $0, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope dummyProcedure
dummyProcedure:
    # stack offsets:

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $0, %esp                # make room for locals

    # function body

l_dummyProcedure_exit:
    # epilogue
    addl    $0, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f0
f0:
    # stack offsets:
    #    -16(%ebp)   4  [ $t1       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t10      <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t11      <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t12      <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t13      <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t14      <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t15      <int> %ebp-40 ]
    #    -44(%ebp)   4  [ $t16      <int> %ebp-44 ]
    #    -48(%ebp)   4  [ $t17      <int> %ebp-48 ]
    #    -52(%ebp)   4  [ $t18      <int> %ebp-52 ]
    #    -53(%ebp)   1  [ $t19      <char> %ebp-53 ]
    #    -60(%ebp)   4  [ $t2       <int> %ebp-60 ]
    #    -64(%ebp)   4  [ $t3       <int> %ebp-64 ]
    #    -68(%ebp)   4  [ $t4       <int> %ebp-68 ]
    #    -72(%ebp)   4  [ $t5       <int> %ebp-72 ]
    #    -76(%ebp)   4  [ $t6       <int> %ebp-76 ]
    #    -80(%ebp)   4  [ $t7       <int> %ebp-80 ]
    #    -84(%ebp)   4  [ $t8       <int> %ebp-84 ]
    #    -88(%ebp)   4  [ $t9       <int> %ebp-88 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 9 of <array 6 of <array 6 of <array 4 of <array 1 of <bool>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 4 of <array 2 of <array 7 of <array 9 of <array 4 of <char>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 1 of <array 6 of <array 8 of <array 2 of <array 8 of <bool>>>>>>> %ebp+16 ]
    #     20(%ebp)   4  [ %v3       <ptr(4) to <array 7 of <array 10 of <array 3 of <array 1 of <array 1 of <char>>>>>>> %ebp+20 ]
    #    -89(%ebp)   1  [ $v4       <char> %ebp-89 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $80, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $20, %ecx              
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    movl    $98, %eax               #   0:     return 98
    jmp     l_f0_exit              
    movl    $4972, %eax             #   1:     mul    t1 <- 4972, 76098
    movl    $76098, %ebx           
    imull   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   2:     div    t2 <- t1, 23096
    movl    $23096, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -60(%ebp)        
    movl    $2, %eax                #   3:     param  1 <- 2
    pushl   %eax                   
    movl    20(%ebp), %eax          #   4:     param  0 <- v3
    pushl   %eax                   
    call    DIM                     #   5:     call   t3 <- DIM
    addl    $8, %esp               
    movl    %eax, -64(%ebp)        
    movl    -60(%ebp), %eax         #   6:     mul    t4 <- t2, t3
    movl    -64(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -68(%ebp)        
    movl    -68(%ebp), %eax         #   7:     add    t5 <- t4, 44135
    movl    $44135, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -72(%ebp)        
    movl    $3, %eax                #   8:     param  1 <- 3
    pushl   %eax                   
    movl    20(%ebp), %eax          #   9:     param  0 <- v3
    pushl   %eax                   
    call    DIM                     #  10:     call   t6 <- DIM
    addl    $8, %esp               
    movl    %eax, -76(%ebp)        
    movl    -72(%ebp), %eax         #  11:     mul    t7 <- t5, t6
    movl    -76(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -80(%ebp)        
    movl    -80(%ebp), %eax         #  12:     add    t8 <- t7, 19097
    movl    $19097, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -84(%ebp)        
    movl    $4, %eax                #  13:     param  1 <- 4
    pushl   %eax                   
    movl    20(%ebp), %eax          #  14:     param  0 <- v3
    pushl   %eax                   
    call    DIM                     #  15:     call   t9 <- DIM
    addl    $8, %esp               
    movl    %eax, -88(%ebp)        
    movl    -84(%ebp), %eax         #  16:     mul    t10 <- t8, t9
    movl    -88(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  17:     add    t11 <- t10, 85693
    movl    $85693, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    $5, %eax                #  18:     param  1 <- 5
    pushl   %eax                   
    movl    20(%ebp), %eax          #  19:     param  0 <- v3
    pushl   %eax                   
    call    DIM                     #  20:     call   t12 <- DIM
    addl    $8, %esp               
    movl    %eax, -28(%ebp)        
    movl    -24(%ebp), %eax         #  21:     mul    t13 <- t11, t12
    movl    -28(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  22:     add    t14 <- t13, 38054
    movl    $38054, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  23:     mul    t15 <- t14, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -40(%ebp)        
    movl    20(%ebp), %eax          #  24:     param  0 <- v3
    pushl   %eax                   
    call    DOFS                    #  25:     call   t16 <- DOFS
    addl    $4, %esp               
    movl    %eax, -44(%ebp)        
    movl    -40(%ebp), %eax         #  26:     add    t17 <- t15, t16
    movl    -44(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -48(%ebp)        
    movl    20(%ebp), %eax          #  27:     add    t18 <- v3, t17
    movl    -48(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -52(%ebp)        
    movl    $97, %eax               #  28:     assign @t18 <- 97
    movl    -52(%ebp), %edi        
    movb    %al, (%edi)            
l_f0_3_while_cond:
    call    dummyCHARfunc           #  30:     call   t19 <- dummyCHARfunc
    movb    %al, -53(%ebp)         
    movzbl  -53(%ebp), %eax         #  31:     if     t19 >= 97 goto 4_while_body
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jge     l_f0_4_while_body      
    jmp     l_f0_2                  #  32:     goto   2
l_f0_4_while_body:
    jmp     l_f0_3_while_cond       #  34:     goto   3_while_cond
l_f0_2:

l_f0_exit:
    # epilogue
    addl    $80, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -16(%ebp)   4  [ $t1       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t2       <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $t3       <bool> %ebp-21 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 10 of <array 5 of <array 10 of <array 9 of <array 9 of <char>>>>>>> %ebp+8 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $12, %esp               # make room for locals

    xorl    %eax, %eax              # memset local stack area to 0
    movl    %eax, 8(%esp)          
    movl    %eax, 4(%esp)          
    movl    %eax, 0(%esp)          

    # function body
    call    dummyINTfunc            #   0:     call   t1 <- dummyINTfunc
    movl    %eax, -16(%ebp)        
    call    dummyINTfunc            #   1:     call   t2 <- dummyINTfunc
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   2:     return t2
    jmp     l_f1_exit              
    call    dummyBOOLfunc           #   3:     call   t3 <- dummyBOOLfunc
    movb    %al, -21(%ebp)         

l_f1_exit:
    # epilogue
    addl    $12, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -13(%ebp)   1  [ $t1       <bool> %ebp-13 ]
    #    -20(%ebp)   4  [ $t10      <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t11      <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t12      <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t13      <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t14      <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t15      <int> %ebp-40 ]
    #    -44(%ebp)   4  [ $t16      <int> %ebp-44 ]
    #    -48(%ebp)   4  [ $t17      <int> %ebp-48 ]
    #    -52(%ebp)   4  [ $t18      <int> %ebp-52 ]
    #    -56(%ebp)   4  [ $t19      <int> %ebp-56 ]
    #    -60(%ebp)   4  [ $t2       <int> %ebp-60 ]
    #    -64(%ebp)   4  [ $t20      <ptr(4) to <array 7 of <array 10 of <array 3 of <array 1 of <array 1 of <char>>>>>>> %ebp-64 ]
    #    -68(%ebp)   4  [ $t21      <ptr(4) to <array 1 of <array 6 of <array 8 of <array 2 of <array 8 of <bool>>>>>>> %ebp-68 ]
    #    -72(%ebp)   4  [ $t22      <ptr(4) to <array 4 of <array 2 of <array 7 of <array 9 of <array 4 of <char>>>>>>> %ebp-72 ]
    #    -76(%ebp)   4  [ $t23      <ptr(4) to <array 9 of <array 6 of <array 6 of <array 4 of <array 1 of <bool>>>>>>> %ebp-76 ]
    #    -77(%ebp)   1  [ $t24      <char> %ebp-77 ]
    #    -78(%ebp)   1  [ $t25      <bool> %ebp-78 ]
    #    -84(%ebp)   4  [ $t3       <int> %ebp-84 ]
    #    -88(%ebp)   4  [ $t4       <int> %ebp-88 ]
    #    -92(%ebp)   4  [ $t5       <int> %ebp-92 ]
    #    -96(%ebp)   4  [ $t6       <int> %ebp-96 ]
    #   -100(%ebp)   4  [ $t7       <int> %ebp-100 ]
    #   -104(%ebp)   4  [ $t8       <int> %ebp-104 ]
    #   -108(%ebp)   4  [ $t9       <int> %ebp-108 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 2 of <array 6 of <array 6 of <array 6 of <array 9 of <int>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 8 of <array 9 of <array 1 of <array 8 of <array 9 of <int>>>>>>> %ebp+12 ]
    #     16(%ebp)   1  [ %v2       <char> %ebp+16 ]
    #   -112(%ebp)   4  [ $v3       <int> %ebp-112 ]
    #   -1432(%ebp)  1320  [ $v4       <array 9 of <array 6 of <array 6 of <array 4 of <array 1 of <bool>>>>>> %ebp-1432 ]
    #   -3472(%ebp)  2040  [ $v5       <array 4 of <array 2 of <array 7 of <array 9 of <array 4 of <char>>>>>> %ebp-3472 ]
    #   -4264(%ebp)  792  [ $v6       <array 1 of <array 6 of <array 8 of <array 2 of <array 8 of <bool>>>>>> %ebp-4264 ]
    #   -4500(%ebp)  234  [ $v7       <array 7 of <array 10 of <array 3 of <array 1 of <array 1 of <char>>>>>> %ebp-4500 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $4488, %esp             # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $1122, %ecx            
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-1432(%ebp)          # local array 'v4': 5 dimensions
    movl    $9,-1428(%ebp)          #   dimension 1: 9 elements
    movl    $6,-1424(%ebp)          #   dimension 2: 6 elements
    movl    $6,-1420(%ebp)          #   dimension 3: 6 elements
    movl    $4,-1416(%ebp)          #   dimension 4: 4 elements
    movl    $1,-1412(%ebp)          #   dimension 5: 1 elements
    movl    $5,-3472(%ebp)          # local array 'v5': 5 dimensions
    movl    $4,-3468(%ebp)          #   dimension 1: 4 elements
    movl    $2,-3464(%ebp)          #   dimension 2: 2 elements
    movl    $7,-3460(%ebp)          #   dimension 3: 7 elements
    movl    $9,-3456(%ebp)          #   dimension 4: 9 elements
    movl    $4,-3452(%ebp)          #   dimension 5: 4 elements
    movl    $5,-4264(%ebp)          # local array 'v6': 5 dimensions
    movl    $1,-4260(%ebp)          #   dimension 1: 1 elements
    movl    $6,-4256(%ebp)          #   dimension 2: 6 elements
    movl    $8,-4252(%ebp)          #   dimension 3: 8 elements
    movl    $2,-4248(%ebp)          #   dimension 4: 2 elements
    movl    $8,-4244(%ebp)          #   dimension 5: 8 elements
    movl    $5,-4500(%ebp)          # local array 'v7': 5 dimensions
    movl    $7,-4496(%ebp)          #   dimension 1: 7 elements
    movl    $10,-4492(%ebp)         #   dimension 2: 10 elements
    movl    $3,-4488(%ebp)          #   dimension 3: 3 elements
    movl    $1,-4484(%ebp)          #   dimension 4: 1 elements
    movl    $1,-4480(%ebp)          #   dimension 5: 1 elements

    # function body
    jmp     l_f2_2                  #   0:     goto   2
    jmp     l_f2_2                  #   1:     goto   2
    movl    $1, %eax                #   2:     assign t1 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f2_3                  #   3:     goto   3
l_f2_2:
    movl    $0, %eax                #   5:     assign t1 <- 0
    movb    %al, -13(%ebp)         
l_f2_3:
    movzbl  -13(%ebp), %eax         #   7:     return t1
    jmp     l_f2_exit              
    movl    $2, %eax                #   8:     param  1 <- 2
    pushl   %eax                   
    movl    8(%ebp), %eax           #   9:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  10:     call   t2 <- DIM
    addl    $8, %esp               
    movl    %eax, -60(%ebp)        
    movl    $47594, %eax            #  11:     mul    t3 <- 47594, t2
    movl    -60(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -84(%ebp)        
    movl    $90952, %eax            #  12:     sub    t4 <- 90952, 57169
    movl    $57169, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -88(%ebp)        
    movl    -84(%ebp), %eax         #  13:     add    t5 <- t3, t4
    movl    -88(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -92(%ebp)        
    movl    $3, %eax                #  14:     param  1 <- 3
    pushl   %eax                   
    movl    8(%ebp), %eax           #  15:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  16:     call   t6 <- DIM
    addl    $8, %esp               
    movl    %eax, -96(%ebp)        
    movl    -92(%ebp), %eax         #  17:     mul    t7 <- t5, t6
    movl    -96(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -100(%ebp)       
    call    ReadInt                 #  18:     call   t8 <- ReadInt
    movl    %eax, -104(%ebp)       
    movl    -100(%ebp), %eax        #  19:     add    t9 <- t7, t8
    movl    -104(%ebp), %ebx       
    addl    %ebx, %eax             
    movl    %eax, -108(%ebp)       
    movl    $4, %eax                #  20:     param  1 <- 4
    pushl   %eax                   
    movl    8(%ebp), %eax           #  21:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  22:     call   t10 <- DIM
    addl    $8, %esp               
    movl    %eax, -20(%ebp)        
    movl    -108(%ebp), %eax        #  23:     mul    t11 <- t9, t10
    movl    -20(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  24:     add    t12 <- t11, 98617
    movl    $98617, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    $5, %eax                #  25:     param  1 <- 5
    pushl   %eax                   
    movl    8(%ebp), %eax           #  26:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  27:     call   t13 <- DIM
    addl    $8, %esp               
    movl    %eax, -32(%ebp)        
    movl    -28(%ebp), %eax         #  28:     mul    t14 <- t12, t13
    movl    -32(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  29:     add    t15 <- t14, 88291
    movl    $88291, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #  30:     mul    t16 <- t15, 4
    movl    $4, %ebx               
    imull   %ebx                   
    movl    %eax, -44(%ebp)        
    movl    8(%ebp), %eax           #  31:     param  0 <- v0
    pushl   %eax                   
    call    DOFS                    #  32:     call   t17 <- DOFS
    addl    $4, %esp               
    movl    %eax, -48(%ebp)        
    movl    -44(%ebp), %eax         #  33:     add    t18 <- t16, t17
    movl    -48(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -52(%ebp)        
    movl    8(%ebp), %eax           #  34:     add    t19 <- v0, t18
    movl    -52(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -56(%ebp)        
    movl    $1699, %eax             #  35:     assign @t19 <- 1699
    movl    -56(%ebp), %edi        
    movl    %eax, (%edi)           
    leal    -4500(%ebp), %eax       #  36:     &()    t20 <- v7
    movl    %eax, -64(%ebp)        
    movl    -64(%ebp), %eax         #  37:     param  3 <- t20
    pushl   %eax                   
    leal    -4264(%ebp), %eax       #  38:     &()    t21 <- v6
    movl    %eax, -68(%ebp)        
    movl    -68(%ebp), %eax         #  39:     param  2 <- t21
    pushl   %eax                   
    leal    -3472(%ebp), %eax       #  40:     &()    t22 <- v5
    movl    %eax, -72(%ebp)        
    movl    -72(%ebp), %eax         #  41:     param  1 <- t22
    pushl   %eax                   
    leal    -1432(%ebp), %eax       #  42:     &()    t23 <- v4
    movl    %eax, -76(%ebp)        
    movl    -76(%ebp), %eax         #  43:     param  0 <- t23
    pushl   %eax                   
    call    f0                      #  44:     call   t24 <- f0
    addl    $16, %esp              
    movb    %al, -77(%ebp)         
    movl    $99, %eax               #  45:     if     99 # t24 goto 10
    movzbl  -77(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jne     l_f2_10                
    jmp     l_f2_11                 #  46:     goto   11
l_f2_10:
    movl    $1, %eax                #  48:     assign t25 <- 1
    movb    %al, -78(%ebp)         
    jmp     l_f2_12                 #  49:     goto   12
l_f2_11:
    movl    $0, %eax                #  51:     assign t25 <- 0
    movb    %al, -78(%ebp)         
l_f2_12:
    movzbl  -78(%ebp), %eax         #  53:     return t25
    jmp     l_f2_exit              

l_f2_exit:
    # epilogue
    addl    $4488, %esp             # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -13(%ebp)   1  [ $t0       <bool> %ebp-13 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $4, %esp                # make room for locals

    xorl    %eax, %eax              # memset local stack area to 0
    movl    %eax, 0(%esp)          

    # function body
    jmp     l_test_exit            
l_test_2_while_cond:
    movl    $20699, %eax            #   2:     if     20699 # 92669 goto 3_while_body
    movl    $92669, %ebx           
    cmpl    %ebx, %eax             
    jne     l_test_3_while_body    
    jmp     l_test_1                #   3:     goto   1
l_test_3_while_body:
    call    WriteLn                 #   5:     call   WriteLn
    jmp     l_test_exit            
    jmp     l_test_2_while_cond     #   7:     goto   2_while_cond
l_test_1:
    jmp     l_test_11               #   9:     goto   11
    jmp     l_test_8                #  10:     goto   8
l_test_11:
    jmp     l_test_9                #  12:     goto   9
l_test_8:
    movl    $1, %eax                #  14:     assign t0 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_test_10               #  15:     goto   10
l_test_9:
    movl    $0, %eax                #  17:     assign t0 <- 0
    movb    %al, -13(%ebp)         
l_test_10:
    movzbl  -13(%ebp), %eax         #  19:     assign v0 <- t0
    movb    %al, v0                

l_test_exit:
    # epilogue
    addl    $4, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # end of text section
    #-----------------------------------------

    #-----------------------------------------
    # global data section
    #
    .data
    .align 4

    # scope: test
v0:                                 # <bool>
    .skip    1








    # end of global data section
    #-----------------------------------------

    .end
##################################################
