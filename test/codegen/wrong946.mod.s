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
    #    -24(%ebp)   4  [ $t2       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t3       <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t4       <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t5       <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t6       <int> %ebp-40 ]
    #    -41(%ebp)   1  [ $t7       <bool> %ebp-41 ]
    #      8(%ebp)   4  [ %v0       <int> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <bool> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <int> %ebp+16 ]
    #     20(%ebp)   4  [ %v3       <ptr(4) to <array 6 of <array 2 of <array 5 of <array 2 of <array 9 of <bool>>>>>>> %ebp+20 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $32, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $8, %ecx               
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    call    dummyINTfunc            #   0:     call   t0 <- dummyINTfunc
    movl    %eax, -16(%ebp)        
    movl    $99, %eax               #   1:     if     99 <= 97 goto 2
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jle     l_f0_2                 
    jmp     l_f0_3                  #   2:     goto   3
l_f0_2:
    movl    $1, %eax                #   4:     assign t1 <- 1
    movb    %al, -17(%ebp)         
    jmp     l_f0_4                  #   5:     goto   4
l_f0_3:
    movl    $0, %eax                #   7:     assign t1 <- 0
    movb    %al, -17(%ebp)         
l_f0_4:
    movzbl  -17(%ebp), %eax         #   9:     assign v1 <- t1
    movb    %al, 12(%ebp)          
    movl    $71786, %eax            #  10:     div    t2 <- 71786, 87547
    movl    $87547, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  11:     div    t3 <- t2, 8673
    movl    $8673, %ebx            
    cdq                            
    idivl   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  12:     mul    t4 <- t3, 73246
    movl    $73246, %ebx           
    imull   %ebx                   
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  13:     mul    t5 <- t4, 65461
    movl    $65461, %ebx           
    imull   %ebx                   
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  14:     add    t6 <- t5, 2368
    movl    $2368, %ebx            
    addl    %ebx, %eax             
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #  15:     if     t6 >= 40488 goto 7
    movl    $40488, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f0_7                 
    jmp     l_f0_8                  #  16:     goto   8
l_f0_7:
    movl    $1, %eax                #  18:     assign t7 <- 1
    movb    %al, -41(%ebp)         
    jmp     l_f0_9                  #  19:     goto   9
l_f0_8:
    movl    $0, %eax                #  21:     assign t7 <- 0
    movb    %al, -41(%ebp)         
l_f0_9:
    movzbl  -41(%ebp), %eax         #  23:     assign v1 <- t7
    movb    %al, 12(%ebp)          

l_f0_exit:
    # epilogue
    addl    $32, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -16(%ebp)   4  [ $t0       <ptr(4) to <array 5 of <char>>> %ebp-16 ]
    #    -17(%ebp)   1  [ $t1       <bool> %ebp-17 ]
    #    -18(%ebp)   1  [ $t2       <bool> %ebp-18 ]
    #    -24(%ebp)   4  [ $v0       <int> %ebp-24 ]

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
    call    WriteLn                 #   0:     call   WriteLn
    movl    $100, %eax              #   1:     if     100 # 98 goto 2_if_true
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jne     l_f1_2_if_true         
    jmp     l_f1_3_if_false         #   2:     goto   3_if_false
l_f1_2_if_true:
    leal    _str_1, %eax            #   4:     &()    t0 <- _str_1
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   5:     param  0 <- t0
    pushl   %eax                   
    call    WriteStr                #   6:     call   WriteStr
    addl    $4, %esp               
    movl    $54528, %eax            #   7:     assign v0 <- 54528
    movl    %eax, -24(%ebp)        
    call    WriteLn                 #   8:     call   WriteLn
    jmp     l_f1_1                  #   9:     goto   1
l_f1_3_if_false:
l_f1_1:
    call    dummyBOOLfunc           #  12:     call   t1 <- dummyBOOLfunc
    movb    %al, -17(%ebp)         
    movzbl  -17(%ebp), %eax         #  13:     if     t1 = 1 goto 13
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f1_13                
    jmp     l_f1_10                 #  14:     goto   10
l_f1_13:
    jmp     l_f1_10                 #  16:     goto   10
    movl    $1, %eax                #  17:     assign t2 <- 1
    movb    %al, -18(%ebp)         
    jmp     l_f1_11                 #  18:     goto   11
l_f1_10:
    movl    $0, %eax                #  20:     assign t2 <- 0
    movb    %al, -18(%ebp)         
l_f1_11:
    movzbl  -18(%ebp), %eax         #  22:     return t2
    jmp     l_f1_exit              

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
    #    -16(%ebp)   4  [ $t0       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t1       <ptr(4) to <array 6 of <array 2 of <array 5 of <array 2 of <array 9 of <bool>>>>>>> %ebp-20 ]
    #    -21(%ebp)   1  [ $t10      <bool> %ebp-21 ]
    #    -22(%ebp)   1  [ $t2       <bool> %ebp-22 ]
    #    -28(%ebp)   4  [ $t3       <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t4       <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t5       <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t6       <int> %ebp-40 ]
    #    -44(%ebp)   4  [ $t7       <int> %ebp-44 ]
    #    -48(%ebp)   4  [ $t8       <int> %ebp-48 ]
    #    -49(%ebp)   1  [ $t9       <char> %ebp-49 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 6 of <array 10 of <array 5 of <array 3 of <array 10 of <char>>>>>>> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <bool> %ebp+12 ]
    #     16(%ebp)   1  [ %v2       <char> %ebp+16 ]
    #     20(%ebp)   4  [ %v3       <int> %ebp+20 ]
    #   -1156(%ebp)  1104  [ $v4       <array 6 of <array 2 of <array 5 of <array 2 of <array 9 of <bool>>>>>> %ebp-1156 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $1144, %esp             # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $286, %ecx             
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-1156(%ebp)          # local array 'v4': 5 dimensions
    movl    $6,-1152(%ebp)          #   dimension 1: 6 elements
    movl    $2,-1148(%ebp)          #   dimension 2: 2 elements
    movl    $5,-1144(%ebp)          #   dimension 3: 5 elements
    movl    $2,-1140(%ebp)          #   dimension 4: 2 elements
    movl    $9,-1136(%ebp)          #   dimension 5: 9 elements

    # function body
    call    ReadInt                 #   0:     call   t0 <- ReadInt
    movl    %eax, -16(%ebp)        
    leal    -1156(%ebp), %eax       #   1:     &()    t1 <- v4
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   2:     param  3 <- t1
    pushl   %eax                   
    movl    $47684, %eax            #   3:     param  2 <- 47684
    pushl   %eax                   
    movl    $22868, %eax            #   4:     if     22868 <= 40771 goto 2
    movl    $40771, %ebx           
    cmpl    %ebx, %eax             
    jle     l_f2_2                 
    jmp     l_f2_3                  #   5:     goto   3
l_f2_2:
    movl    $1, %eax                #   7:     assign t2 <- 1
    movb    %al, -22(%ebp)         
    jmp     l_f2_4                  #   8:     goto   4
l_f2_3:
    movl    $0, %eax                #  10:     assign t2 <- 0
    movb    %al, -22(%ebp)         
l_f2_4:
    movzbl  -22(%ebp), %eax         #  12:     param  1 <- t2
    pushl   %eax                   
    call    ReadInt                 #  13:     call   t3 <- ReadInt
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  14:     div    t4 <- t3, 5282
    movl    $5282, %ebx            
    cdq                            
    idivl   %ebx                   
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  15:     div    t5 <- t4, 41164
    movl    $41164, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  16:     mul    t6 <- t5, 54862
    movl    $54862, %ebx           
    imull   %ebx                   
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #  17:     div    t7 <- t6, 3792
    movl    $3792, %ebx            
    cdq                            
    idivl   %ebx                   
    movl    %eax, -44(%ebp)        
    movl    -44(%ebp), %eax         #  18:     div    t8 <- t7, 64532
    movl    $64532, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -48(%ebp)        
    movl    -48(%ebp), %eax         #  19:     param  0 <- t8
    pushl   %eax                   
    call    f0                      #  20:     call   t9 <- f0
    addl    $16, %esp              
    movb    %al, -49(%ebp)         
l_f2_7_while_cond:
    jmp     l_f2_11                 #  22:     goto   11
    movl    $1, %eax                #  23:     assign t10 <- 1
    movb    %al, -21(%ebp)         
    jmp     l_f2_12                 #  24:     goto   12
l_f2_11:
    movl    $0, %eax                #  26:     assign t10 <- 0
    movb    %al, -21(%ebp)         
l_f2_12:
    movl    $1, %eax                #  28:     if     1 = t10 goto 8_while_body
    movzbl  -21(%ebp), %ebx        
    cmpl    %ebx, %eax             
    je      l_f2_8_while_body      
    jmp     l_f2_6                  #  29:     goto   6
l_f2_8_while_body:
    jmp     l_f2_7_while_cond       #  31:     goto   7_while_cond
l_f2_6:

l_f2_exit:
    # epilogue
    addl    $1144, %esp             # remove locals
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
    movl    $0, %eax                #   0:     assign v0 <- 0
    movb    %al, v0                
    jmp     l_test_2_if_true        #   1:     goto   2_if_true
    jmp     l_test_3_if_false       #   2:     goto   3_if_false
l_test_2_if_true:
    jmp     l_test_exit            
    jmp     l_test_exit            
    jmp     l_test_1                #   6:     goto   1
l_test_3_if_false:
l_test_1:
l_test_8_while_cond:
    movl    $0, %eax                #  10:     if     0 = 0 goto 9_while_body
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    je      l_test_9_while_body    
    jmp     l_test_7                #  11:     goto   7
l_test_9_while_body:
    jmp     l_test_exit            
l_test_13_while_cond:
    jmp     l_test_12               #  15:     goto   12
    jmp     l_test_13_while_cond    #  16:     goto   13_while_cond
l_test_12:
    jmp     l_test_exit            
    jmp     l_test_8_while_cond     #  19:     goto   8_while_cond
l_test_7:

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
_str_1:                             # <array 5 of <char>>
    .long    1
    .long    5
    .asciz "bye\n"
v0:                                 # <bool>
    .skip    1








    # end of global data section
    #-----------------------------------------

    .end
##################################################
