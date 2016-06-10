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
    #      8(%ebp)   1  [ %v0       <bool> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <char> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 18 of <array 28 of <array 25 of <array 28 of <array 87 of <int>>>>>>> %ebp+16 ]
    #     20(%ebp)   4  [ %v3       <ptr(4) to <array 83 of <array 48 of <array 74 of <array 62 of <array 94 of <int>>>>>>> %ebp+20 ]

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
l_f0_1_while_cond:
    movl    $97, %eax               #   1:     if     97 <= 98 goto 2_while_body
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jle     l_f0_2_while_body      
    jmp     l_f0_0                  #   2:     goto   0
l_f0_2_while_body:
    jmp     l_f0_1_while_cond       #   4:     goto   1_while_cond
l_f0_0:
    movl    $98, %eax               #   6:     if     98 > 100 goto 5
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jg      l_f0_5                 
    jmp     l_f0_6                  #   7:     goto   6
l_f0_5:
    movl    $1, %eax                #   9:     assign t5 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f0_7                  #  10:     goto   7
l_f0_6:
    movl    $0, %eax                #  12:     assign t5 <- 0
    movb    %al, -13(%ebp)         
l_f0_7:
    movzbl  -13(%ebp), %eax         #  14:     assign v0 <- t5
    movb    %al, 8(%ebp)           
    movl    $100, %eax              #  15:     assign v1 <- 100
    movb    %al, 12(%ebp)          

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
    #    -16(%ebp)   4  [ $t10      <ptr(4) to <array 83 of <array 48 of <array 74 of <array 62 of <array 94 of <int>>>>>>> %ebp-16 ]
    #    -20(%ebp)   4  [ $t11      <ptr(4) to <array 18 of <array 28 of <array 25 of <array 28 of <array 87 of <int>>>>>>> %ebp-20 ]
    #    -21(%ebp)   1  [ $t12      <bool> %ebp-21 ]
    #    -28(%ebp)   4  [ $t5       <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t6       <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t7       <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t8       <int> %ebp-40 ]
    #    -44(%ebp)   4  [ $t9       <int> %ebp-44 ]
    #      8(%ebp)   4  [ %v0       <int> %ebp+8 ]
    #   -122774468(%ebp)  122774424  [ $v1       <array 18 of <array 28 of <array 25 of <array 28 of <array 87 of <int>>>>>> %ebp-122774468 ]
    #   1594409508(%ebp)  -1717183976  [ $v2       <array 83 of <array 48 of <array 74 of <array 62 of <array 94 of <int>>>>>> %ebp+1594409508 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $-1594409520, %esp      # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $-398602380, %ecx      
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-122774468(%ebp)     # local array 'v1': 5 dimensions
    movl    $18,-122774464(%ebp)    #   dimension 1: 18 elements
    movl    $28,-122774460(%ebp)    #   dimension 2: 28 elements
    movl    $25,-122774456(%ebp)    #   dimension 3: 25 elements
    movl    $28,-122774452(%ebp)    #   dimension 4: 28 elements
    movl    $87,-122774448(%ebp)    #   dimension 5: 87 elements
    movl    $5,1594409508(%ebp)     # local array 'v2': 5 dimensions
    movl    $83,1594409512(%ebp)    #   dimension 1: 83 elements
    movl    $48,1594409516(%ebp)    #   dimension 2: 48 elements
    movl    $74,1594409520(%ebp)    #   dimension 3: 74 elements
    movl    $62,1594409524(%ebp)    #   dimension 4: 62 elements
    movl    $94,1594409528(%ebp)    #   dimension 5: 94 elements

    # function body
    movl    $20639, %eax            #   0:     sub    t5 <- 20639, 74905
    movl    $74905, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #   1:     sub    t6 <- t5, 32684
    movl    $32684, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #   2:     return t6
    jmp     l_f1_exit              
    movl    $46444, %eax            #   3:     sub    t7 <- 46444, 1075
    movl    $1075, %ebx            
    subl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #   4:     add    t8 <- t7, 69775
    movl    $69775, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #   5:     sub    t9 <- t8, 50073
    movl    $50073, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -44(%ebp)        
    movl    -44(%ebp), %eax         #   6:     return t9
    jmp     l_f1_exit              
    jmp     l_f1_4_if_false         #   7:     goto   4_if_false
    leal    1594409508(%ebp), %eax  #   8:     &()    t10 <- v2
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   9:     param  3 <- t10
    pushl   %eax                   
    leal    -122774468(%ebp), %eax  #  10:     &()    t11 <- v1
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  11:     param  2 <- t11
    pushl   %eax                   
    movl    $98, %eax               #  12:     param  1 <- 98
    pushl   %eax                   
    movl    $1, %eax                #  13:     param  0 <- 1
    pushl   %eax                   
    call    f0                      #  14:     call   t12 <- f0
    addl    $16, %esp              
    movb    %al, -21(%ebp)         
l_f1_7_while_cond:
    movl    $99, %eax               #  16:     if     99 < 97 goto 8_while_body
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jl      l_f1_8_while_body      
    jmp     l_f1_6                  #  17:     goto   6
l_f1_8_while_body:
    jmp     l_f1_7_while_cond       #  19:     goto   7_while_cond
l_f1_6:
    movl    $88546, %eax            #  21:     return 88546
    jmp     l_f1_exit              
    jmp     l_f1_2                  #  22:     goto   2
l_f1_4_if_false:
l_f1_2:

l_f1_exit:
    # epilogue
    addl    $-1594409520, %esp      # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -13(%ebp)   1  [ $t5       <char> %ebp-13 ]
    #    -20(%ebp)   4  [ $t6       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t7       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t8       <int> %ebp-28 ]
    #    -29(%ebp)   1  [ $t9       <bool> %ebp-29 ]
    #      8(%ebp)   1  [ %v0       <char> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <char> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <int> %ebp+16 ]
    #     20(%ebp)   1  [ %v3       <char> %ebp+20 ]

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
    call    dummyCHARfunc           #   0:     call   t5 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movl    $16056, %eax            #   1:     div    t6 <- 16056, 58683
    movl    $58683, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   2:     div    t7 <- t6, 67386
    movl    $67386, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   3:     mul    t8 <- t7, 71129
    movl    $71129, %ebx           
    imull   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #   4:     assign v2 <- t8
    movl    %eax, 16(%ebp)         
    call    dummyBOOLfunc           #   5:     call   t9 <- dummyBOOLfunc
    movb    %al, -29(%ebp)         

l_f2_exit:
    # epilogue
    addl    $20, %esp               # remove locals
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
    #    -24(%ebp)   4  [ $t2       <int> %ebp-24 ]
    #    -25(%ebp)   1  [ $t3       <char> %ebp-25 ]
    #    -26(%ebp)   1  [ $t4       <char> %ebp-26 ]

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
l_test_1_while_cond:
    movl    $69260, %eax            #   1:     if     69260 >= 63171 goto 2_while_body
    movl    $63171, %ebx           
    cmpl    %ebx, %eax             
    jge     l_test_2_while_body    
    jmp     l_test_0                #   2:     goto   0
l_test_2_while_body:
l_test_5_while_cond:
    call    dummyBOOLfunc           #   5:     call   t0 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    movl    $1, %eax                #   6:     if     1 # t0 goto 6_while_body
    movzbl  -13(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jne     l_test_6_while_body    
    jmp     l_test_4                #   7:     goto   4
l_test_6_while_body:
    jmp     l_test_5_while_cond     #   9:     goto   5_while_cond
l_test_4:
    jmp     l_test_1_while_cond     #  11:     goto   1_while_cond
l_test_0:
    call    ReadInt                 #  13:     call   t1 <- ReadInt
    movl    %eax, -20(%ebp)        
    call    dummyINTfunc            #  14:     call   t2 <- dummyINTfunc
    movl    %eax, -24(%ebp)        
    jmp     l_test_12_if_false      #  15:     goto   12_if_false
    jmp     l_test_18_if_false      #  16:     goto   18_if_false
    jmp     l_test_16               #  17:     goto   16
l_test_18_if_false:
l_test_16:
    movl    $100, %eax              #  20:     param  3 <- 100
    pushl   %eax                   
    movl    $14139, %eax            #  21:     param  2 <- 14139
    pushl   %eax                   
    movl    $99, %eax               #  22:     param  1 <- 99
    pushl   %eax                   
    call    dummyCHARfunc           #  23:     call   t3 <- dummyCHARfunc
    movb    %al, -25(%ebp)         
    movzbl  -25(%ebp), %eax         #  24:     param  0 <- t3
    pushl   %eax                   
    call    f2                      #  25:     call   t4 <- f2
    addl    $16, %esp              
    movb    %al, -26(%ebp)         
    jmp     l_test_13               #  26:     goto   13
l_test_13:
    jmp     l_test_10               #  28:     goto   10
l_test_12_if_false:
l_test_10:

l_test_exit:
    # epilogue
    addl    $16, %esp               # remove locals
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









    # end of global data section
    #-----------------------------------------

    .end
##################################################
