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
    #    -13(%ebp)   1  [ $t2       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t3       <bool> %ebp-14 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 8 of <array 35 of <array 34 of <array 28 of <array 11 of <int>>>>>>> %ebp+8 ]
    #    -15(%ebp)   1  [ $v1       <bool> %ebp-15 ]

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
    call    dummyBOOLfunc           #   0:     call   t2 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   1:     assign v1 <- t2
    movb    %al, -15(%ebp)         
l_f0_2_while_cond:
    movl    $0, %eax                #   3:     if     0 = 0 goto 3_while_body
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    je      l_f0_3_while_body      
    jmp     l_f0_1                  #   4:     goto   1
l_f0_3_while_body:
    movl    $31062, %eax            #   6:     return 31062
    jmp     l_f0_exit              
l_f0_7_while_cond:
    jmp     l_f0_7_while_cond       #   8:     goto   7_while_cond
l_f0_10_while_cond:
    movl    $2992, %eax             #  10:     if     2992 >= 10848 goto 11_while_body
    movl    $10848, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f0_11_while_body     
    jmp     l_f0_9                  #  11:     goto   9
l_f0_11_while_body:
    jmp     l_f0_10_while_cond      #  13:     goto   10_while_cond
l_f0_9:
    jmp     l_f0_2_while_cond       #  15:     goto   2_while_cond
l_f0_1:
    movl    $98, %eax               #  17:     if     98 < 98 goto 14
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jl      l_f0_14                
    jmp     l_f0_15                 #  18:     goto   15
l_f0_14:
    movl    $1, %eax                #  20:     assign t3 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_f0_16                 #  21:     goto   16
l_f0_15:
    movl    $0, %eax                #  23:     assign t3 <- 0
    movb    %al, -14(%ebp)         
l_f0_16:
    movzbl  -14(%ebp), %eax         #  25:     assign v1 <- t3
    movb    %al, -15(%ebp)         

l_f0_exit:
    # epilogue
    addl    $4, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -13(%ebp)   1  [ $t2       <bool> %ebp-13 ]
    #    -20(%ebp)   4  [ $t3       <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $t4       <char> %ebp-21 ]
    #    -22(%ebp)   1  [ $t5       <bool> %ebp-22 ]
    #    -28(%ebp)   4  [ $t6       <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t7       <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t8       <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t9       <int> %ebp-40 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 35 of <array 8 of <array 77 of <array 46 of <array 71 of <int>>>>>>> %ebp+8 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $28, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $7, %ecx               
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    call    dummyBOOLfunc           #   0:     call   t2 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   1:     if     t2 = 1 goto 1_if_true
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f1_1_if_true         
    jmp     l_f1_2_if_false         #   2:     goto   2_if_false
l_f1_1_if_true:
    call    ReadInt                 #   4:     call   t3 <- ReadInt
    movl    %eax, -20(%ebp)        
l_f1_5_while_cond:
    movl    $97, %eax               #   6:     if     97 <= 97 goto 6_while_body
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jle     l_f1_6_while_body      
    jmp     l_f1_4                  #   7:     goto   4
l_f1_6_while_body:
    jmp     l_f1_5_while_cond       #   9:     goto   5_while_cond
l_f1_4:
    movl    $100, %eax              #  11:     param  0 <- 100
    pushl   %eax                   
    call    WriteChar               #  12:     call   WriteChar
    addl    $4, %esp               
    jmp     l_f1_0                  #  13:     goto   0
l_f1_2_if_false:
l_f1_0:
    call    dummyCHARfunc           #  16:     call   t4 <- dummyCHARfunc
    movb    %al, -21(%ebp)         
    movl    $99, %eax               #  17:     if     99 = t4 goto 10
    movzbl  -21(%ebp), %ebx        
    cmpl    %ebx, %eax             
    je      l_f1_10                
    jmp     l_f1_11                 #  18:     goto   11
l_f1_10:
    movl    $1, %eax                #  20:     assign t5 <- 1
    movb    %al, -22(%ebp)         
    jmp     l_f1_12                 #  21:     goto   12
l_f1_11:
    movl    $0, %eax                #  23:     assign t5 <- 0
    movb    %al, -22(%ebp)         
l_f1_12:
    movzbl  -22(%ebp), %eax         #  25:     return t5
    jmp     l_f1_exit              
l_f1_15_while_cond:
    movl    $31107, %eax            #  27:     mul    t6 <- 31107, 59563
    movl    $59563, %ebx           
    imull   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  28:     add    t7 <- t6, 79375
    movl    $79375, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  29:     add    t8 <- t7, 47267
    movl    $47267, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  30:     add    t9 <- t8, 70585
    movl    $70585, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -40(%ebp)        
    movl    $82935, %eax            #  31:     if     82935 = t9 goto 16_while_body
    movl    -40(%ebp), %ebx        
    cmpl    %ebx, %eax             
    je      l_f1_16_while_body     
    jmp     l_f1_14                 #  32:     goto   14
l_f1_16_while_body:
    jmp     l_f1_15_while_cond      #  34:     goto   15_while_cond
l_f1_14:

l_f1_exit:
    # epilogue
    addl    $28, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -13(%ebp)   1  [ $t2       <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t3       <char> %ebp-14 ]
    #    -20(%ebp)   4  [ $t4       <int> %ebp-20 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 92 of <array 36 of <array 9 of <array 90 of <array 18 of <int>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 36 of <array 89 of <array 46 of <array 6 of <array 81 of <int>>>>>>> %ebp+12 ]
    #     16(%ebp)   1  [ %v2       <bool> %ebp+16 ]
    #    -24(%ebp)   4  [ $v3       <int> %ebp-24 ]

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
l_f2_1_while_cond:
    call    dummyCHARfunc           #   1:     call   t2 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   2:     if     t2 < 97 goto 2_while_body
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jl      l_f2_2_while_body      
    jmp     l_f2_0                  #   3:     goto   0
l_f2_2_while_body:
    jmp     l_f2_1_while_cond       #   5:     goto   1_while_cond
l_f2_0:
    call    dummyCHARfunc           #   7:     call   t3 <- dummyCHARfunc
    movb    %al, -14(%ebp)         
    movl    $98, %eax               #   8:     if     98 < 97 goto 6_if_true
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jl      l_f2_6_if_true         
    jmp     l_f2_7_if_false         #   9:     goto   7_if_false
l_f2_6_if_true:
    movl    $72717, %eax            #  11:     assign v3 <- 72717
    movl    %eax, -24(%ebp)        
    call    dummyINTfunc            #  12:     call   t4 <- dummyINTfunc
    movl    %eax, -20(%ebp)        
l_f2_12_while_cond:
    movl    $98, %eax               #  14:     if     98 >= 100 goto 13_while_body
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jge     l_f2_13_while_body     
    jmp     l_f2_11                 #  15:     goto   11
l_f2_13_while_body:
    jmp     l_f2_12_while_cond      #  17:     goto   12_while_cond
l_f2_11:
    jmp     l_f2_5                  #  19:     goto   5
l_f2_7_if_false:
l_f2_5:

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
    #    -13(%ebp)   1  [ $t0       <bool> %ebp-13 ]
    #    -20(%ebp)   4  [ $t1       <int> %ebp-20 ]

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
    jmp     l_test_exit            
l_test_2_while_cond:
    jmp     l_test_exit            
    call    dummyBOOLfunc           #   3:     call   t0 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    jmp     l_test_2_while_cond     #   4:     goto   2_while_cond
    jmp     l_test_exit            
    movl    $72677, %eax            #   6:     sub    t1 <- 72677, 86945
    movl    $86945, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   7:     assign v0 <- t1
    movl    %eax, v0               
    movl    $0, %eax                #   8:     assign v1 <- 0
    movb    %al, v1                
    jmp     l_test_exit            
    jmp     l_test_13               #  10:     goto   13
l_test_13:
    jmp     l_test_9                #  12:     goto   9
l_test_9:

l_test_exit:
    # epilogue
    addl    $8, %esp                # remove locals
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
v1:                                 # <bool>
    .skip    1








    # end of global data section
    #-----------------------------------------

    .end
##################################################
