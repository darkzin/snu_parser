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
    #    -13(%ebp)   1  [ $t2       <char> %ebp-13 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 49 of <array 2 of <array 95 of <array 43 of <array 49 of <bool>>>>>>> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <char> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 65 of <array 35 of <array 54 of <array 83 of <array 57 of <int>>>>>>> %ebp+16 ]

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
    jmp     l_f0_exit              
    jmp     l_f0_exit              
    call    dummyCHARfunc           #   2:     call   t2 <- dummyCHARfunc
    movb    %al, -13(%ebp)         

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
    #    -13(%ebp)   1  [ $t2       <char> %ebp-13 ]
    #    -20(%ebp)   4  [ $t3       <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $t4       <bool> %ebp-21 ]
    #    -22(%ebp)   1  [ $t5       <bool> %ebp-22 ]
    #    -23(%ebp)   1  [ $t6       <bool> %ebp-23 ]
    #      8(%ebp)   1  [ %v0       <char> %ebp+8 ]
    #    -24(%ebp)   1  [ $v1       <bool> %ebp-24 ]

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
    call    dummyCHARfunc           #   0:     call   t2 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   1:     param  0 <- t2
    pushl   %eax                   
    call    WriteChar               #   2:     call   WriteChar
    addl    $4, %esp               
    call    ReadInt                 #   3:     call   t3 <- ReadInt
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   4:     if     t3 <= 78686 goto 2
    movl    $78686, %ebx           
    cmpl    %ebx, %eax             
    jle     l_f1_2                 
    jmp     l_f1_3                  #   5:     goto   3
l_f1_2:
    movl    $1, %eax                #   7:     assign t4 <- 1
    movb    %al, -21(%ebp)         
    jmp     l_f1_4                  #   8:     goto   4
l_f1_3:
    movl    $0, %eax                #  10:     assign t4 <- 0
    movb    %al, -21(%ebp)         
l_f1_4:
    movzbl  -21(%ebp), %eax         #  12:     assign v1 <- t4
    movb    %al, -24(%ebp)         
    call    dummyBOOLfunc           #  13:     call   t5 <- dummyBOOLfunc
    movb    %al, -22(%ebp)         
    movzbl  -22(%ebp), %eax         #  14:     if     t5 = 1 goto 7
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f1_7                 
    jmp     l_f1_8                  #  15:     goto   8
l_f1_7:
    movl    $1, %eax                #  17:     assign t6 <- 1
    movb    %al, -23(%ebp)         
    jmp     l_f1_9                  #  18:     goto   9
l_f1_8:
    movl    $0, %eax                #  20:     assign t6 <- 0
    movb    %al, -23(%ebp)         
l_f1_9:
    movzbl  -23(%ebp), %eax         #  22:     assign v1 <- t6
    movb    %al, -24(%ebp)         

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
    #    -16(%ebp)   4  [ $t2       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t3       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t4       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t5       <int> %ebp-28 ]
    #    -29(%ebp)   1  [ $t6       <bool> %ebp-29 ]
    #    -36(%ebp)   4  [ $t7       <ptr(4) to <array 65 of <array 35 of <array 54 of <array 83 of <array 57 of <int>>>>>>> %ebp-36 ]
    #    -40(%ebp)   4  [ $t8       <ptr(4) to <array 49 of <array 2 of <array 95 of <array 43 of <array 49 of <bool>>>>>>> %ebp-40 ]
    #   -19616236(%ebp)  19616194  [ $v0       <array 49 of <array 2 of <array 95 of <array 43 of <array 49 of <bool>>>>>> %ebp-19616236 ]
    #   1950537636(%ebp)  -1970153872  [ $v1       <array 65 of <array 35 of <array 54 of <array 83 of <array 57 of <int>>>>>> %ebp+1950537636 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $-1950537648, %esp      # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $-487634412, %ecx      
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-19616236(%ebp)      # local array 'v0': 5 dimensions
    movl    $49,-19616232(%ebp)     #   dimension 1: 49 elements
    movl    $2,-19616228(%ebp)      #   dimension 2: 2 elements
    movl    $95,-19616224(%ebp)     #   dimension 3: 95 elements
    movl    $43,-19616220(%ebp)     #   dimension 4: 43 elements
    movl    $49,-19616216(%ebp)     #   dimension 5: 49 elements
    movl    $5,1950537636(%ebp)     # local array 'v1': 5 dimensions
    movl    $65,1950537640(%ebp)    #   dimension 1: 65 elements
    movl    $35,1950537644(%ebp)    #   dimension 2: 35 elements
    movl    $54,1950537648(%ebp)    #   dimension 3: 54 elements
    movl    $83,1950537652(%ebp)    #   dimension 4: 83 elements
    movl    $57,1950537656(%ebp)    #   dimension 5: 57 elements

    # function body
    movl    $76638, %eax            #   0:     if     76638 <= 93942 goto 1_if_true
    movl    $93942, %ebx           
    cmpl    %ebx, %eax             
    jle     l_f2_1_if_true         
    jmp     l_f2_2_if_false         #   1:     goto   2_if_false
l_f2_1_if_true:
l_f2_5_while_cond:
    movl    $22216, %eax            #   4:     if     22216 # 4984 goto 6_while_body
    movl    $4984, %ebx            
    cmpl    %ebx, %eax             
    jne     l_f2_6_while_body      
    jmp     l_f2_4                  #   5:     goto   4
l_f2_6_while_body:
    jmp     l_f2_5_while_cond       #   7:     goto   5_while_cond
l_f2_4:
    call    ReadInt                 #   9:     call   t2 <- ReadInt
    movl    %eax, -16(%ebp)        
    jmp     l_f2_0                  #  10:     goto   0
l_f2_2_if_false:
l_f2_0:
    movl    $52951, %eax            #  13:     div    t3 <- 52951, 87983
    movl    $87983, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  14:     mul    t4 <- t3, 45130
    movl    $45130, %ebx           
    imull   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  15:     mul    t5 <- t4, 503
    movl    $503, %ebx             
    imull   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    $78657, %eax            #  16:     if     78657 < t5 goto 10
    movl    -28(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jl      l_f2_10                
    jmp     l_f2_11                 #  17:     goto   11
l_f2_10:
    movl    $1, %eax                #  19:     assign t6 <- 1
    movb    %al, -29(%ebp)         
    jmp     l_f2_12                 #  20:     goto   12
l_f2_11:
    movl    $0, %eax                #  22:     assign t6 <- 0
    movb    %al, -29(%ebp)         
l_f2_12:
    movzbl  -29(%ebp), %eax         #  24:     return t6
    jmp     l_f2_exit              
    leal    1950537636(%ebp), %eax  #  25:     &()    t7 <- v1
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  26:     param  2 <- t7
    pushl   %eax                   
    movl    $99, %eax               #  27:     param  1 <- 99
    pushl   %eax                   
    leal    -19616236(%ebp), %eax   #  28:     &()    t8 <- v0
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #  29:     param  0 <- t8
    pushl   %eax                   
    call    f0                      #  30:     call   f0
    addl    $12, %esp              

l_f2_exit:
    # epilogue
    addl    $-1950537648, %esp      # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -16(%ebp)   4  [ $t0       <int> %ebp-16 ]
    #    -17(%ebp)   1  [ $t1       <char> %ebp-17 ]

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
l_test_1_while_cond:
    jmp     l_test_3                #   1:     goto   3
l_test_3:
    jmp     l_test_0                #   3:     goto   0
    jmp     l_test_1_while_cond     #   4:     goto   1_while_cond
l_test_0:
    call    dummyINTfunc            #   6:     call   t0 <- dummyINTfunc
    movl    %eax, -16(%ebp)        
    movl    $97, %eax               #   7:     param  0 <- 97
    pushl   %eax                   
    call    WriteChar               #   8:     call   WriteChar
    addl    $4, %esp               
l_test_8_while_cond:
    movl    $98, %eax               #  10:     if     98 < 98 goto 9_while_body
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jl      l_test_9_while_body    
    jmp     l_test_7                #  11:     goto   7
l_test_9_while_body:
    movl    $99, %eax               #  13:     assign v0 <- 99
    movb    %al, v0                
l_test_13_while_cond:
    jmp     l_test_13_while_cond    #  15:     goto   13_while_cond
    call    dummyCHARfunc           #  16:     call   t1 <- dummyCHARfunc
    movb    %al, -17(%ebp)         
    movl    $87609, %eax            #  17:     param  0 <- 87609
    pushl   %eax                   
    call    WriteInt                #  18:     call   WriteInt
    addl    $4, %esp               
    jmp     l_test_8_while_cond     #  19:     goto   8_while_cond
l_test_7:
l_test_18_while_cond:
    jmp     l_test_exit            
    jmp     l_test_24_if_false      #  23:     goto   24_if_false
    jmp     l_test_22               #  24:     goto   22
l_test_24_if_false:
l_test_22:
    jmp     l_test_exit            
    jmp     l_test_exit            
    jmp     l_test_18_while_cond    #  29:     goto   18_while_cond

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
v0:                                 # <char>
    .skip    1








    # end of global data section
    #-----------------------------------------

    .end
##################################################
