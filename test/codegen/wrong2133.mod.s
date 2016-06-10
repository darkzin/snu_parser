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
    #      8(%ebp)   1  [ %v1       <char> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <ptr(4) to <array 21 of <array 86 of <array 92 of <array 76 of <array 27 of <int>>>>>>> %ebp+12 ]
    #     16(%ebp)   1  [ %v3       <char> %ebp+16 ]
    #    -24(%ebp)   4  [ $v4       <int> %ebp-24 ]

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
    movl    $99, %eax               #   0:     assign v1 <- 99
    movb    %al, 8(%ebp)           
l_f0_2_while_cond:
    call    dummyBOOLfunc           #   2:     call   t5 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   3:     if     t5 = 1 goto 6
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f0_6                 
    jmp     l_f0_1                  #   4:     goto   1
l_f0_6:
    jmp     l_f0_2_while_cond       #   6:     goto   2_while_cond
l_f0_1:
    movl    $7501, %eax             #   8:     mul    t6 <- 7501, 24802
    movl    $24802, %ebx           
    imull   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   9:     assign v4 <- t6
    movl    %eax, -24(%ebp)        

l_f0_exit:
    # epilogue
    addl    $12, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -13(%ebp)   1  [ $t5       <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t6       <char> %ebp-14 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 39 of <array 43 of <array 17 of <array 45 of <array 77 of <bool>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <ptr(4) to <array 38 of <array 23 of <array 84 of <array 55 of <array 15 of <int>>>>>>> %ebp+12 ]
    #    -15(%ebp)   1  [ $v3       <char> %ebp-15 ]

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
    movl    $97, %eax               #   0:     assign v3 <- 97
    movb    %al, -15(%ebp)         
    call    dummyCHARfunc           #   1:     call   t5 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
l_f1_3_while_cond:
    call    dummyCHARfunc           #   3:     call   t6 <- dummyCHARfunc
    movb    %al, -14(%ebp)         
    movzbl  -14(%ebp), %eax         #   4:     if     t6 >= 100 goto 4_while_body
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jge     l_f1_4_while_body      
    jmp     l_f1_2                  #   5:     goto   2
l_f1_4_while_body:
    jmp     l_f1_3_while_cond       #   7:     goto   3_while_cond
l_f1_2:

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
    #    -13(%ebp)   1  [ $t5       <bool> %ebp-13 ]
    #    -20(%ebp)   4  [ $t6       <ptr(4) to <array 21 of <array 86 of <array 92 of <array 76 of <array 27 of <int>>>>>>> %ebp-20 ]
    #    -21(%ebp)   1  [ $t7       <bool> %ebp-21 ]
    #    -22(%ebp)   1  [ $v1       <char> %ebp-22 ]
    #   -1363775664(%ebp)  1363775640  [ $v2       <array 21 of <array 86 of <array 92 of <array 76 of <array 27 of <int>>>>>> %ebp-1363775664 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $1363775652, %esp       # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $340943913, %ecx       
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-1363775664(%ebp)    # local array 'v2': 5 dimensions
    movl    $21,-1363775660(%ebp)   #   dimension 1: 21 elements
    movl    $86,-1363775656(%ebp)   #   dimension 2: 86 elements
    movl    $92,-1363775652(%ebp)   #   dimension 3: 92 elements
    movl    $76,-1363775648(%ebp)   #   dimension 4: 76 elements
    movl    $27,-1363775644(%ebp)   #   dimension 5: 27 elements

    # function body
    movl    $100, %eax              #   0:     assign v1 <- 100
    movb    %al, -22(%ebp)         
l_f2_2_while_cond:
    jmp     l_f2_4                  #   2:     goto   4
    jmp     l_f2_4                  #   3:     goto   4
l_f2_4:
    jmp     l_f2_2_while_cond       #   5:     goto   2_while_cond
    movl    $88818, %eax            #   6:     if     88818 <= 8639 goto 13_if_true
    movl    $8639, %ebx            
    cmpl    %ebx, %eax             
    jle     l_f2_13_if_true        
    jmp     l_f2_14_if_false        #   7:     goto   14_if_false
l_f2_13_if_true:
    call    dummyBOOLfunc           #   9:     call   t5 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    movl    $98, %eax               #  10:     param  2 <- 98
    pushl   %eax                   
    leal    -1363775664(%ebp), %eax #  11:     &()    t6 <- v2
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  12:     param  1 <- t6
    pushl   %eax                   
    movl    $99, %eax               #  13:     param  0 <- 99
    pushl   %eax                   
    call    f0                      #  14:     call   t7 <- f0
    addl    $12, %esp              
    movb    %al, -21(%ebp)         
    jmp     l_f2_12                 #  15:     goto   12
l_f2_14_if_false:
l_f2_12:

l_f2_exit:
    # epilogue
    addl    $1363775652, %esp       # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -16(%ebp)   4  [ $t0       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t1       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t2       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t3       <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t4       <int> %ebp-32 ]

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
l_test_1_while_cond:
    jmp     l_test_0                #   1:     goto   0
    jmp     l_test_exit            
l_test_5_while_cond:
    jmp     l_test_4                #   4:     goto   4
    jmp     l_test_5_while_cond     #   5:     goto   5_while_cond
l_test_4:
    jmp     l_test_1_while_cond     #   7:     goto   1_while_cond
l_test_0:
    jmp     l_test_9_if_false       #   9:     goto   9_if_false
    jmp     l_test_exit            
l_test_12_while_cond:
    jmp     l_test_12_while_cond    #  12:     goto   12_while_cond
    jmp     l_test_exit            
l_test_16_while_cond:
    movl    $98, %eax               #  15:     if     98 >= 99 goto 17_while_body
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jge     l_test_17_while_body   
    jmp     l_test_15               #  16:     goto   15
l_test_17_while_body:
    jmp     l_test_16_while_cond    #  18:     goto   16_while_cond
l_test_15:
    movl    $63386, %eax            #  20:     assign v0 <- 63386
    movl    %eax, v0               
    jmp     l_test_exit            
    jmp     l_test_23_if_false      #  22:     goto   23_if_false
    jmp     l_test_21               #  23:     goto   21
l_test_23_if_false:
l_test_21:
    jmp     l_test_7                #  26:     goto   7
l_test_9_if_false:
l_test_7:
    movl    $14542, %eax            #  29:     mul    t0 <- 14542, 12309
    movl    $12309, %ebx           
    imull   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  30:     add    t1 <- t0, 93426
    movl    $93426, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  31:     assign v0 <- t1
    movl    %eax, v0               
    movl    $61249, %eax            #  32:     assign v0 <- 61249
    movl    %eax, v0               
    call    ReadInt                 #  33:     call   t2 <- ReadInt
    movl    %eax, -24(%ebp)        
    movl    $96469, %eax            #  34:     div    t3 <- 96469, 27604
    movl    $27604, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  35:     div    t4 <- t3, 42821
    movl    $42821, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  36:     assign v0 <- t4
    movl    %eax, v0               

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
v0:                                 # <int>
    .skip    4








    # end of global data section
    #-----------------------------------------

    .end
##################################################
