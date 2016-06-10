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
    #    -20(%ebp)   4  [ $t2       <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $t3       <bool> %ebp-21 ]
    #    -22(%ebp)   1  [ $t4       <bool> %ebp-22 ]
    #      8(%ebp)   1  [ %v1       <char> %ebp+8 ]
    #     12(%ebp)   1  [ %v2       <char> %ebp+12 ]
    #     16(%ebp)   1  [ %v3       <char> %ebp+16 ]
    #     20(%ebp)   4  [ %v4       <ptr(4) to <array 2 of <array 84 of <array 38 of <array 33 of <array 83 of <char>>>>>>> %ebp+20 ]
    #    -28(%ebp)   4  [ $v5       <int> %ebp-28 ]
    #    -29(%ebp)   1  [ $v6       <bool> %ebp-29 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $20, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $5, %ecx               
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    movl    $17196, %eax            #   0:     add    t1 <- 17196, 47000
    movl    $47000, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     assign v5 <- t1
    movl    %eax, -28(%ebp)        
    movl    $97, %eax               #   2:     if     97 >= 97 goto 2_if_true
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jge     l_f0_2_if_true         
    jmp     l_f0_3_if_false         #   3:     goto   3_if_false
l_f0_2_if_true:
    call    ReadInt                 #   5:     call   t2 <- ReadInt
    movl    %eax, -20(%ebp)        
    movl    $0, %eax                #   6:     return 0
    jmp     l_f0_exit              
    movl    $100, %eax              #   7:     if     100 > 100 goto 8
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jg      l_f0_8                 
    jmp     l_f0_9                  #   8:     goto   9
l_f0_8:
    movl    $1, %eax                #  10:     assign t3 <- 1
    movb    %al, -21(%ebp)         
    jmp     l_f0_10                 #  11:     goto   10
l_f0_9:
    movl    $0, %eax                #  13:     assign t3 <- 0
    movb    %al, -21(%ebp)         
l_f0_10:
    movzbl  -21(%ebp), %eax         #  15:     assign v6 <- t3
    movb    %al, -29(%ebp)         
    jmp     l_f0_1                  #  16:     goto   1
l_f0_3_if_false:
l_f0_1:
    jmp     l_f0_13                 #  19:     goto   13
    jmp     l_f0_13                 #  20:     goto   13
l_f0_13:
    movl    $1, %eax                #  22:     assign t4 <- 1
    movb    %al, -22(%ebp)         
    jmp     l_f0_15                 #  23:     goto   15
    movl    $0, %eax                #  24:     assign t4 <- 0
    movb    %al, -22(%ebp)         
l_f0_15:
    movzbl  -22(%ebp), %eax         #  26:     return t4
    jmp     l_f0_exit              

l_f0_exit:
    # epilogue
    addl    $20, %esp               # remove locals
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
    #    -21(%ebp)   1  [ $t3       <char> %ebp-21 ]
    #    -28(%ebp)   4  [ $t4       <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t5       <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t6       <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t7       <int> %ebp-40 ]
    #    -44(%ebp)   4  [ $t8       <int> %ebp-44 ]
    #    -48(%ebp)   4  [ $t9       <int> %ebp-48 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 36 of <array 73 of <array 65 of <array 19 of <array 98 of <char>>>>>>> %ebp+8 ]
    #     12(%ebp)   1  [ %v2       <bool> %ebp+12 ]
    #     16(%ebp)   1  [ %v3       <bool> %ebp+16 ]
    #     20(%ebp)   4  [ %v4       <ptr(4) to <array 55 of <array 42 of <array 13 of <array 5 of <array 49 of <char>>>>>>> %ebp+20 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $36, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $9, %ecx               
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    movl    $80069, %eax            #   0:     add    t1 <- 80069, 46058
    movl    $46058, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     add    t2 <- t1, 37716
    movl    $37716, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   2:     if     t2 < 84381 goto 1_if_true
    movl    $84381, %ebx           
    cmpl    %ebx, %eax             
    jl      l_f1_1_if_true         
    jmp     l_f1_2_if_false         #   3:     goto   2_if_false
l_f1_1_if_true:
l_f1_5_while_cond:
    jmp     l_f1_5_while_cond       #   6:     goto   5_while_cond
    jmp     l_f1_0                  #   7:     goto   0
l_f1_2_if_false:
l_f1_0:
    jmp     l_f1_9_if_false         #  10:     goto   9_if_false
l_f1_11_while_cond:
    movl    $58920, %eax            #  12:     if     58920 >= 14571 goto 12_while_body
    movl    $14571, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f1_12_while_body     
    jmp     l_f1_10                 #  13:     goto   10
l_f1_12_while_body:
    jmp     l_f1_11_while_cond      #  15:     goto   11_while_cond
l_f1_10:
    call    dummyCHARfunc           #  17:     call   t3 <- dummyCHARfunc
    movb    %al, -21(%ebp)         
    movzbl  -21(%ebp), %eax         #  18:     if     t3 # 98 goto 15_if_true
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jne     l_f1_15_if_true        
    jmp     l_f1_16_if_false        #  19:     goto   16_if_false
l_f1_15_if_true:
    jmp     l_f1_14                 #  21:     goto   14
l_f1_16_if_false:
l_f1_14:
    jmp     l_f1_7                  #  24:     goto   7
l_f1_9_if_false:
l_f1_7:
l_f1_19_while_cond:
    movl    $16785, %eax            #  28:     sub    t4 <- 16785, 79175
    movl    $79175, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  29:     sub    t5 <- t4, 72955
    movl    $72955, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  30:     sub    t6 <- t5, 49941
    movl    $49941, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  31:     add    t7 <- t6, 14879
    movl    $14879, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #  32:     add    t8 <- t7, 2157
    movl    $2157, %ebx            
    addl    %ebx, %eax             
    movl    %eax, -44(%ebp)        
    movl    -44(%ebp), %eax         #  33:     sub    t9 <- t8, 89240
    movl    $89240, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -48(%ebp)        
    movl    $44561, %eax            #  34:     if     44561 >= t9 goto 20_while_body
    movl    -48(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jge     l_f1_20_while_body     
    jmp     l_f1_18                 #  35:     goto   18
l_f1_20_while_body:
    call    dummyProcedure          #  37:     call   dummyProcedure
l_f1_24_while_cond:
    movl    $1, %eax                #  39:     if     1 # 1 goto 25_while_body
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    jne     l_f1_25_while_body     
    jmp     l_f1_23                 #  40:     goto   23
l_f1_25_while_body:
    jmp     l_f1_24_while_cond      #  42:     goto   24_while_cond
l_f1_23:
    jmp     l_f1_19_while_cond      #  44:     goto   19_while_cond
l_f1_18:

l_f1_exit:
    # epilogue
    addl    $36, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -13(%ebp)   1  [ $t1       <bool> %ebp-13 ]
    #    -20(%ebp)   4  [ $t2       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t3       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t4       <int> %ebp-28 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 97 of <array 24 of <array 47 of <array 20 of <array 49 of <int>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <int> %ebp+12 ]
    #     16(%ebp)   4  [ %v3       <int> %ebp+16 ]
    #     20(%ebp)   1  [ %v4       <bool> %ebp+20 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $16, %esp               # make room for locals

    xorl    %eax, %eax              # memset local stack area to 0
    movl    %eax, 12(%esp)         
    movl    %eax, 8(%esp)          
    movl    %eax, 4(%esp)          
    movl    %eax, 0(%esp)          

    # function body
    call    dummyBOOLfunc           #   0:     call   t1 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    movl    $40262, %eax            #   1:     mul    t2 <- 40262, 10096
    movl    $10096, %ebx           
    imull   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   2:     add    t3 <- t2, 75861
    movl    $75861, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   3:     return t3
    jmp     l_f2_exit              
l_f2_3_while_cond:
    jmp     l_f2_4_while_body       #   5:     goto   4_while_body
    jmp     l_f2_2                  #   6:     goto   2
l_f2_4_while_body:
    movl    $0, %eax                #   8:     assign v4 <- 0
    movb    %al, 20(%ebp)          
    movl    $77539, %eax            #   9:     sub    t4 <- 77539, 59267
    movl    $59267, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  10:     param  0 <- t4
    pushl   %eax                   
    call    WriteInt                #  11:     call   WriteInt
    addl    $4, %esp               
    jmp     l_f2_3_while_cond       #  12:     goto   3_while_cond
l_f2_2:

l_f2_exit:
    # epilogue
    addl    $16, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -16(%ebp)   4  [ $t0       <int> %ebp-16 ]

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
    movl    $36243, %eax            #   0:     assign v0 <- 36243
    movl    %eax, v0               
    jmp     l_test_2_if_true        #   1:     goto   2_if_true
    jmp     l_test_3_if_false       #   2:     goto   3_if_false
    jmp     l_test_3_if_false       #   3:     goto   3_if_false
l_test_2_if_true:
    jmp     l_test_1                #   5:     goto   1
l_test_3_if_false:
l_test_1:
    movl    $38011, %eax            #   8:     add    t0 <- 38011, 13798
    movl    $13798, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   9:     param  0 <- t0
    pushl   %eax                   
    call    WriteInt                #  10:     call   WriteInt
    addl    $4, %esp               
    jmp     l_test_11_if_false      #  11:     goto   11_if_false
    movl    $34970, %eax            #  12:     if     34970 = 45890 goto 14_if_true
    movl    $45890, %ebx           
    cmpl    %ebx, %eax             
    je      l_test_14_if_true      
    jmp     l_test_15_if_false      #  13:     goto   15_if_false
l_test_14_if_true:
    jmp     l_test_13               #  15:     goto   13
l_test_15_if_false:
l_test_13:
    jmp     l_test_9                #  18:     goto   9
l_test_11_if_false:
l_test_9:
    jmp     l_test_exit            
l_test_19_while_cond:
    movl    $97, %eax               #  23:     assign v1 <- 97
    movb    %al, v1                
    jmp     l_test_19_while_cond    #  24:     goto   19_while_cond

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
v0:                                 # <int>
    .skip    4
v1:                                 # <char>
    .skip    1








    # end of global data section
    #-----------------------------------------

    .end
##################################################
