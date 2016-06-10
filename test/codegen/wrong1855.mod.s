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
    #    -13(%ebp)   1  [ $t5       <bool> %ebp-13 ]
    #    -20(%ebp)   4  [ $t6       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t7       <int> %ebp-24 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 42 of <array 74 of <array 3 of <array 15 of <array 14 of <int>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 93 of <array 16 of <array 31 of <array 38 of <array 100 of <char>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <int> %ebp+16 ]
    #    -25(%ebp)   1  [ $v3       <bool> %ebp-25 ]

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
    jmp     l_f0_1                  #   0:     goto   1
    jmp     l_f0_1                  #   1:     goto   1
l_f0_1:
    movl    $1, %eax                #   3:     assign t5 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f0_3                  #   4:     goto   3
    movl    $0, %eax                #   5:     assign t5 <- 0
    movb    %al, -13(%ebp)         
l_f0_3:
    movzbl  -13(%ebp), %eax         #   7:     assign v3 <- t5
    movb    %al, -25(%ebp)         
    call    ReadInt                 #   8:     call   t6 <- ReadInt
    movl    %eax, -20(%ebp)        
    call    ReadInt                 #   9:     call   t7 <- ReadInt
    movl    %eax, -24(%ebp)        

l_f0_exit:
    # epilogue
    addl    $16, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -13(%ebp)   1  [ $t5       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t6       <bool> %ebp-14 ]
    #    -15(%ebp)   1  [ $t7       <bool> %ebp-15 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 56 of <array 100 of <array 85 of <array 12 of <array 14 of <int>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <int> %ebp+12 ]
    #     16(%ebp)   1  [ %v2       <bool> %ebp+16 ]

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
l_f1_1_while_cond:
    jmp     l_f1_2_while_body       #   1:     goto   2_while_body
    jmp     l_f1_2_while_body       #   2:     goto   2_while_body
    jmp     l_f1_0                  #   3:     goto   0
l_f1_2_while_body:
    jmp     l_f1_1_while_cond       #   5:     goto   1_while_cond
l_f1_0:
l_f1_7_while_cond:
    call    dummyBOOLfunc           #   8:     call   t5 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    movl    $0, %eax                #   9:     if     0 = t5 goto 10
    movzbl  -13(%ebp), %ebx        
    cmpl    %ebx, %eax             
    je      l_f1_10                
    jmp     l_f1_11                 #  10:     goto   11
l_f1_10:
    movl    $1, %eax                #  12:     assign t6 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_f1_12                 #  13:     goto   12
l_f1_11:
    movl    $0, %eax                #  15:     assign t6 <- 0
    movb    %al, -14(%ebp)         
l_f1_12:
    movzbl  -14(%ebp), %eax         #  17:     return t6
    jmp     l_f1_exit              
    jmp     l_f1_7_while_cond       #  18:     goto   7_while_cond
    jmp     l_f1_19                 #  19:     goto   19
l_f1_19:
    jmp     l_f1_16                 #  21:     goto   16
    movl    $1, %eax                #  22:     assign t7 <- 1
    movb    %al, -15(%ebp)         
    jmp     l_f1_17                 #  23:     goto   17
l_f1_16:
    movl    $0, %eax                #  25:     assign t7 <- 0
    movb    %al, -15(%ebp)         
l_f1_17:
    movzbl  -15(%ebp), %eax         #  27:     assign v2 <- t7
    movb    %al, 16(%ebp)          

l_f1_exit:
    # epilogue
    addl    $4, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -16(%ebp)   4  [ $t5       <ptr(4) to <array 56 of <array 100 of <array 85 of <array 12 of <array 14 of <int>>>>>>> %ebp-16 ]
    #    -17(%ebp)   1  [ $t6       <bool> %ebp-17 ]
    #    -24(%ebp)   4  [ $t7       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t8       <int> %ebp-28 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 13 of <array 15 of <array 37 of <array 33 of <array 58 of <bool>>>>>>> %ebp+8 ]
    #   -319872052(%ebp)  319872024  [ $v1       <array 56 of <array 100 of <array 85 of <array 12 of <array 14 of <int>>>>>> %ebp-319872052 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $319872040, %esp        # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $79968010, %ecx        
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-319872052(%ebp)     # local array 'v1': 5 dimensions
    movl    $56,-319872048(%ebp)    #   dimension 1: 56 elements
    movl    $100,-319872044(%ebp)   #   dimension 2: 100 elements
    movl    $85,-319872040(%ebp)    #   dimension 3: 85 elements
    movl    $12,-319872036(%ebp)    #   dimension 4: 12 elements
    movl    $14,-319872032(%ebp)    #   dimension 5: 14 elements

    # function body
    movl    $0, %eax                #   0:     param  2 <- 0
    pushl   %eax                   
    movl    $77120, %eax            #   1:     param  1 <- 77120
    pushl   %eax                   
    leal    -319872052(%ebp), %eax  #   2:     &()    t5 <- v1
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   3:     param  0 <- t5
    pushl   %eax                   
    call    f1                      #   4:     call   t6 <- f1
    addl    $12, %esp              
    movb    %al, -17(%ebp)         
    jmp     l_f2_exit              
    movl    $56290, %eax            #   6:     add    t7 <- 56290, 36867
    movl    $36867, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   7:     add    t8 <- t7, 32226
    movl    $32226, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #   8:     if     t8 >= 41883 goto 3_if_true
    movl    $41883, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f2_3_if_true         
    jmp     l_f2_4_if_false         #   9:     goto   4_if_false
l_f2_3_if_true:
    jmp     l_f2_2                  #  11:     goto   2
l_f2_4_if_false:
l_f2_2:

l_f2_exit:
    # epilogue
    addl    $319872040, %esp        # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -13(%ebp)   1  [ $t0       <bool> %ebp-13 ]
    #    -20(%ebp)   4  [ $t1       <ptr(4) to <array 56 of <array 100 of <array 85 of <array 12 of <array 14 of <int>>>>>>> %ebp-20 ]
    #    -21(%ebp)   1  [ $t2       <bool> %ebp-21 ]
    #    -28(%ebp)   4  [ $t3       <int> %ebp-28 ]
    #    -29(%ebp)   1  [ $t4       <bool> %ebp-29 ]

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
    jmp     l_test_exit            
l_test_2_while_cond:
    movl    $1, %eax                #   2:     if     1 = 1 goto 3_while_body
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_test_3_while_body    
    jmp     l_test_1                #   3:     goto   1
l_test_3_while_body:
    movl    $73664, %eax            #   5:     if     73664 < 783 goto 6
    movl    $783, %ebx             
    cmpl    %ebx, %eax             
    jl      l_test_6               
    jmp     l_test_7                #   6:     goto   7
l_test_6:
    movl    $1, %eax                #   8:     assign t0 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_test_8                #   9:     goto   8
l_test_7:
    movl    $0, %eax                #  11:     assign t0 <- 0
    movb    %al, -13(%ebp)         
l_test_8:
    movzbl  -13(%ebp), %eax         #  13:     param  2 <- t0
    pushl   %eax                   
    movl    $48638, %eax            #  14:     param  1 <- 48638
    pushl   %eax                   
    leal    v0, %eax                #  15:     &()    t1 <- v0
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  16:     param  0 <- t1
    pushl   %eax                   
    call    f1                      #  17:     call   t2 <- f1
    addl    $12, %esp              
    movb    %al, -21(%ebp)         
    jmp     l_test_exit            
    call    dummyProcedure          #  19:     call   dummyProcedure
    call    dummyINTfunc            #  20:     call   t3 <- dummyINTfunc
    movl    %eax, -28(%ebp)        
    jmp     l_test_2_while_cond     #  21:     goto   2_while_cond
l_test_1:
    jmp     l_test_exit            
l_test_15_while_cond:
    movl    $19976, %eax            #  25:     if     19976 >= 56487 goto 16_while_body
    movl    $56487, %ebx           
    cmpl    %ebx, %eax             
    jge     l_test_16_while_body   
    jmp     l_test_14               #  26:     goto   14
l_test_16_while_body:
    call    dummyBOOLfunc           #  28:     call   t4 <- dummyBOOLfunc
    movb    %al, -29(%ebp)         
    jmp     l_test_exit            
    jmp     l_test_19               #  30:     goto   19
l_test_19:
    jmp     l_test_15_while_cond    #  32:     goto   15_while_cond
l_test_14:

l_test_exit:
    # epilogue
    addl    $20, %esp               # remove locals
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
v0:                                 # <array 56 of <array 100 of <array 85 of <array 12 of <array 14 of <int>>>>>>
    .long    5
    .long   56
    .long  100
    .long   85
    .long   12
    .long   14
    .skip 319872000








    # end of global data section
    #-----------------------------------------

    .end
##################################################
