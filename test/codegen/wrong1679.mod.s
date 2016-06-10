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
    #    -16(%ebp)   4  [ $t0       <int> %ebp-16 ]
    #    -17(%ebp)   1  [ $t1       <bool> %ebp-17 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 25 of <array 39 of <array 25 of <array 100 of <array 94 of <bool>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 4 of <array 80 of <array 99 of <array 39 of <array 13 of <bool>>>>>>> %ebp+12 ]
    #     16(%ebp)   1  [ %v2       <bool> %ebp+16 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $8, %esp                # make room for locals

    xorl    %eax, %eax              # memset local stack area to 0
    movl    %eax, 4(%esp)          
    movl    %eax, 0(%esp)          

    # function body
    call    ReadInt                 #   0:     call   t0 <- ReadInt
    movl    %eax, -16(%ebp)        
    call    WriteLn                 #   1:     call   WriteLn
l_f0_3_while_cond:
    call    dummyBOOLfunc           #   3:     call   t1 <- dummyBOOLfunc
    movb    %al, -17(%ebp)         
    movzbl  -17(%ebp), %eax         #   4:     if     t1 = 1 goto 4_while_body
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f0_4_while_body      
    jmp     l_f0_2                  #   5:     goto   2
l_f0_4_while_body:
    jmp     l_f0_3_while_cond       #   7:     goto   3_while_cond
l_f0_2:

l_f0_exit:
    # epilogue
    addl    $8, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -16(%ebp)   4  [ $t0       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t1       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t10      <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t11      <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t12      <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t13      <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t14      <int> %ebp-40 ]
    #    -44(%ebp)   4  [ $t15      <int> %ebp-44 ]
    #    -45(%ebp)   1  [ $t16      <bool> %ebp-45 ]
    #    -52(%ebp)   4  [ $t17      <int> %ebp-52 ]
    #    -56(%ebp)   4  [ $t2       <int> %ebp-56 ]
    #    -60(%ebp)   4  [ $t3       <int> %ebp-60 ]
    #    -64(%ebp)   4  [ $t4       <int> %ebp-64 ]
    #    -68(%ebp)   4  [ $t5       <int> %ebp-68 ]
    #    -72(%ebp)   4  [ $t6       <int> %ebp-72 ]
    #    -76(%ebp)   4  [ $t7       <int> %ebp-76 ]
    #    -80(%ebp)   4  [ $t8       <int> %ebp-80 ]
    #    -84(%ebp)   4  [ $t9       <int> %ebp-84 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 14 of <array 60 of <array 55 of <array 80 of <array 5 of <int>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 15 of <array 41 of <array 28 of <array 63 of <array 28 of <int>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 89 of <array 19 of <array 7 of <array 9 of <array 78 of <bool>>>>>>> %ebp+16 ]
    #    -88(%ebp)   4  [ $v3       <int> %ebp-88 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $76, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $19, %ecx              
    mov     %esp, %edi             
    rep     stosl                  

    # function body
l_f1_1_while_cond:
    movl    $97, %eax               #   1:     if     97 <= 100 goto 2_while_body
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jle     l_f1_2_while_body      
    jmp     l_f1_0                  #   2:     goto   0
l_f1_2_while_body:
    jmp     l_f1_1_while_cond       #   4:     goto   1_while_cond
l_f1_0:
    movl    $2, %eax                #   6:     param  1 <- 2
    pushl   %eax                   
    movl    12(%ebp), %eax          #   7:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #   8:     call   t0 <- DIM
    addl    $8, %esp               
    movl    %eax, -16(%ebp)        
    movl    $35697, %eax            #   9:     mul    t1 <- 35697, t0
    movl    -16(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  10:     add    t2 <- t1, 68747
    movl    $68747, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -56(%ebp)        
    movl    $3, %eax                #  11:     param  1 <- 3
    pushl   %eax                   
    movl    12(%ebp), %eax          #  12:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  13:     call   t3 <- DIM
    addl    $8, %esp               
    movl    %eax, -60(%ebp)        
    movl    -56(%ebp), %eax         #  14:     mul    t4 <- t2, t3
    movl    -60(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -64(%ebp)        
    movl    -64(%ebp), %eax         #  15:     add    t5 <- t4, 1673
    movl    $1673, %ebx            
    addl    %ebx, %eax             
    movl    %eax, -68(%ebp)        
    movl    $4, %eax                #  16:     param  1 <- 4
    pushl   %eax                   
    movl    12(%ebp), %eax          #  17:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  18:     call   t6 <- DIM
    addl    $8, %esp               
    movl    %eax, -72(%ebp)        
    movl    -68(%ebp), %eax         #  19:     mul    t7 <- t5, t6
    movl    -72(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -76(%ebp)        
    movl    -76(%ebp), %eax         #  20:     add    t8 <- t7, 49325
    movl    $49325, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -80(%ebp)        
    movl    $5, %eax                #  21:     param  1 <- 5
    pushl   %eax                   
    movl    12(%ebp), %eax          #  22:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  23:     call   t9 <- DIM
    addl    $8, %esp               
    movl    %eax, -84(%ebp)        
    movl    -80(%ebp), %eax         #  24:     mul    t10 <- t8, t9
    movl    -84(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  25:     add    t11 <- t10, 64647
    movl    $64647, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  26:     mul    t12 <- t11, 4
    movl    $4, %ebx               
    imull   %ebx                   
    movl    %eax, -32(%ebp)        
    movl    12(%ebp), %eax          #  27:     param  0 <- v1
    pushl   %eax                   
    call    DOFS                    #  28:     call   t13 <- DOFS
    addl    $4, %esp               
    movl    %eax, -36(%ebp)        
    movl    -32(%ebp), %eax         #  29:     add    t14 <- t12, t13
    movl    -36(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -40(%ebp)        
    movl    12(%ebp), %eax          #  30:     add    t15 <- v1, t14
    movl    -40(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -44(%ebp)        
    movl    $10307, %eax            #  31:     assign @t15 <- 10307
    movl    -44(%ebp), %edi        
    movl    %eax, (%edi)           
    movl    $1, %eax                #  32:     return 1
    jmp     l_f1_exit              
    jmp     l_f1_9                  #  33:     goto   9
l_f1_9:
    call    dummyBOOLfunc           #  35:     call   t16 <- dummyBOOLfunc
    movb    %al, -45(%ebp)         
    jmp     l_f1_4                  #  36:     goto   4
l_f1_4:
    call    dummyINTfunc            #  38:     call   t17 <- dummyINTfunc
    movl    %eax, -52(%ebp)        

l_f1_exit:
    # epilogue
    addl    $76, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -16(%ebp)   4  [ $t0       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t1       <int> %ebp-20 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 63 of <array 39 of <array 10 of <array 83 of <array 61 of <bool>>>>>>> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <char> %ebp+12 ]
    #    -24(%ebp)   4  [ $v2       <int> %ebp-24 ]

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
    jmp     l_f2_exit              
    jmp     l_f2_exit              
    movl    $47334, %eax            #   2:     add    t0 <- 47334, 18204
    movl    $18204, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   3:     sub    t1 <- t0, 28400
    movl    $28400, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   4:     assign v2 <- t1
    movl    %eax, -24(%ebp)        

l_f2_exit:
    # epilogue
    addl    $12, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $0, %esp                # make room for locals

    # function body
    movl    $1, %eax                #   0:     assign v0 <- 1
    movb    %al, v0                
    movl    $99, %eax               #   1:     assign v1 <- 99
    movb    %al, v1                
    jmp     l_test_exit            

l_test_exit:
    # epilogue
    addl    $0, %esp                # remove locals
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
v1:                                 # <char>
    .skip    1








    # end of global data section
    #-----------------------------------------

    .end
##################################################
