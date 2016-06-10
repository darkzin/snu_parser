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
    #    -16(%ebp)   4  [ $t2       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t3       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t4       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t5       <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t6       <int> %ebp-32 ]
    #    -33(%ebp)   1  [ $t7       <char> %ebp-33 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 4 of <array 8 of <array 1 of <array 10 of <array 4 of <bool>>>>>>> %ebp+8 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $24, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $6, %ecx               
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    movl    $42844, %eax            #   0:     div    t2 <- 42844, 96077
    movl    $96077, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     mul    t3 <- t2, 23339
    movl    $23339, %ebx           
    imull   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   2:     sub    t4 <- t3, 79541
    movl    $79541, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   3:     sub    t5 <- t4, 7054
    movl    $7054, %ebx            
    subl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #   4:     add    t6 <- t5, 13759
    movl    $13759, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #   5:     return t6
    jmp     l_f0_exit              
    jmp     l_f0_3_if_false         #   6:     goto   3_if_false
l_f0_5_while_cond:
    movl    $98, %eax               #   8:     if     98 < 100 goto 6_while_body
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jl      l_f0_6_while_body      
    jmp     l_f0_4                  #   9:     goto   4
l_f0_6_while_body:
    jmp     l_f0_5_while_cond       #  11:     goto   5_while_cond
l_f0_4:
    call    WriteLn                 #  13:     call   WriteLn
    jmp     l_f0_1                  #  14:     goto   1
l_f0_3_if_false:
l_f0_1:
    call    dummyCHARfunc           #  17:     call   t7 <- dummyCHARfunc
    movb    %al, -33(%ebp)         

l_f0_exit:
    # epilogue
    addl    $24, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -13(%ebp)   1  [ $t2       <char> %ebp-13 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 6 of <array 7 of <array 2 of <array 9 of <array 4 of <int>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 3 of <array 7 of <array 2 of <array 6 of <array 8 of <bool>>>>>>> %ebp+12 ]
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
    call    dummyCHARfunc           #   1:     call   t2 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movl    $99, %eax               #   2:     if     99 >= t2 goto 2_while_body
    movzbl  -13(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jge     l_f1_2_while_body      
    jmp     l_f1_0                  #   3:     goto   0
l_f1_2_while_body:
    jmp     l_f1_1_while_cond       #   5:     goto   1_while_cond
l_f1_0:
l_f1_5_while_cond:
    movl    $98, %eax               #   8:     if     98 > 100 goto 7
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jg      l_f1_7                 
    jmp     l_f1_4                  #   9:     goto   4
l_f1_7:
    jmp     l_f1_5_while_cond       #  11:     goto   5_while_cond
l_f1_4:
    movl    $98, %eax               #  13:     return 98
    jmp     l_f1_exit              

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
    #    -16(%ebp)   4  [ $t10      <ptr(4) to <array 3 of <array 7 of <array 2 of <array 6 of <array 8 of <bool>>>>>>> %ebp-16 ]
    #    -20(%ebp)   4  [ $t11      <ptr(4) to <array 6 of <array 7 of <array 2 of <array 9 of <array 4 of <int>>>>>>> %ebp-20 ]
    #    -21(%ebp)   1  [ $t12      <char> %ebp-21 ]
    #    -28(%ebp)   4  [ $t2       <ptr(4) to <array 3 of <array 7 of <array 2 of <array 6 of <array 8 of <bool>>>>>>> %ebp-28 ]
    #    -32(%ebp)   4  [ $t3       <ptr(4) to <array 6 of <array 7 of <array 2 of <array 9 of <array 4 of <int>>>>>>> %ebp-32 ]
    #    -33(%ebp)   1  [ $t4       <char> %ebp-33 ]
    #    -34(%ebp)   1  [ $t5       <bool> %ebp-34 ]
    #    -40(%ebp)   4  [ $t6       <ptr(4) to <array 3 of <array 7 of <array 2 of <array 6 of <array 8 of <bool>>>>>>> %ebp-40 ]
    #    -44(%ebp)   4  [ $t7       <ptr(4) to <array 6 of <array 7 of <array 2 of <array 9 of <array 4 of <int>>>>>>> %ebp-44 ]
    #    -45(%ebp)   1  [ $t8       <char> %ebp-45 ]
    #    -46(%ebp)   1  [ $t9       <bool> %ebp-46 ]
    #      8(%ebp)   4  [ %v0       <int> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 6 of <array 7 of <array 8 of <array 9 of <array 2 of <bool>>>>>>> %ebp+12 ]
    #     16(%ebp)   1  [ %v2       <bool> %ebp+16 ]
    #   -12168(%ebp)  12120  [ $v3       <array 6 of <array 7 of <array 2 of <array 9 of <array 4 of <int>>>>>> %ebp-12168 ]
    #   -14208(%ebp)  2040  [ $v4       <array 3 of <array 7 of <array 2 of <array 6 of <array 8 of <bool>>>>>> %ebp-14208 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $14196, %esp            # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $3549, %ecx            
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-12168(%ebp)         # local array 'v3': 5 dimensions
    movl    $6,-12164(%ebp)         #   dimension 1: 6 elements
    movl    $7,-12160(%ebp)         #   dimension 2: 7 elements
    movl    $2,-12156(%ebp)         #   dimension 3: 2 elements
    movl    $9,-12152(%ebp)         #   dimension 4: 9 elements
    movl    $4,-12148(%ebp)         #   dimension 5: 4 elements
    movl    $5,-14208(%ebp)         # local array 'v4': 5 dimensions
    movl    $3,-14204(%ebp)         #   dimension 1: 3 elements
    movl    $7,-14200(%ebp)         #   dimension 2: 7 elements
    movl    $2,-14196(%ebp)         #   dimension 3: 2 elements
    movl    $6,-14192(%ebp)         #   dimension 4: 6 elements
    movl    $8,-14188(%ebp)         #   dimension 5: 8 elements

    # function body
l_f2_1_while_cond:
    movl    $0, %eax                #   1:     param  2 <- 0
    pushl   %eax                   
    leal    -14208(%ebp), %eax      #   2:     &()    t2 <- v4
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #   3:     param  1 <- t2
    pushl   %eax                   
    leal    -12168(%ebp), %eax      #   4:     &()    t3 <- v3
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #   5:     param  0 <- t3
    pushl   %eax                   
    call    f1                      #   6:     call   t4 <- f1
    addl    $12, %esp              
    movb    %al, -33(%ebp)         
    movzbl  -33(%ebp), %eax         #   7:     if     t4 # 97 goto 2_while_body
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jne     l_f2_2_while_body      
    jmp     l_f2_0                  #   8:     goto   0
l_f2_2_while_body:
    jmp     l_f2_1_while_cond       #  10:     goto   1_while_cond
l_f2_0:
    movl    $10846, %eax            #  12:     if     10846 <= 927 goto 5
    movl    $927, %ebx             
    cmpl    %ebx, %eax             
    jle     l_f2_5                 
    jmp     l_f2_6                  #  13:     goto   6
l_f2_5:
    movl    $1, %eax                #  15:     assign t5 <- 1
    movb    %al, -34(%ebp)         
    jmp     l_f2_7                  #  16:     goto   7
l_f2_6:
    movl    $0, %eax                #  18:     assign t5 <- 0
    movb    %al, -34(%ebp)         
l_f2_7:
    movzbl  -34(%ebp), %eax         #  20:     param  2 <- t5
    pushl   %eax                   
    leal    -14208(%ebp), %eax      #  21:     &()    t6 <- v4
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #  22:     param  1 <- t6
    pushl   %eax                   
    leal    -12168(%ebp), %eax      #  23:     &()    t7 <- v3
    movl    %eax, -44(%ebp)        
    movl    -44(%ebp), %eax         #  24:     param  0 <- t7
    pushl   %eax                   
    call    f1                      #  25:     call   t8 <- f1
    addl    $12, %esp              
    movb    %al, -45(%ebp)         
    movl    $97, %eax               #  26:     if     97 # 100 goto 10_if_true
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jne     l_f2_10_if_true        
    jmp     l_f2_11_if_false        #  27:     goto   11_if_false
l_f2_10_if_true:
l_f2_14_while_cond:
    jmp     l_f2_13                 #  30:     goto   13
    jmp     l_f2_14_while_cond      #  31:     goto   14_while_cond
l_f2_13:
    movl    $100, %eax              #  33:     if     100 < 100 goto 17
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jl      l_f2_17                
    jmp     l_f2_18                 #  34:     goto   18
l_f2_17:
    movl    $1, %eax                #  36:     assign t9 <- 1
    movb    %al, -46(%ebp)         
    jmp     l_f2_19                 #  37:     goto   19
l_f2_18:
    movl    $0, %eax                #  39:     assign t9 <- 0
    movb    %al, -46(%ebp)         
l_f2_19:
    movzbl  -46(%ebp), %eax         #  41:     param  2 <- t9
    pushl   %eax                   
    leal    -14208(%ebp), %eax      #  42:     &()    t10 <- v4
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  43:     param  1 <- t10
    pushl   %eax                   
    leal    -12168(%ebp), %eax      #  44:     &()    t11 <- v3
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  45:     param  0 <- t11
    pushl   %eax                   
    call    f1                      #  46:     call   t12 <- f1
    addl    $12, %esp              
    movb    %al, -21(%ebp)         
    movzbl  -21(%ebp), %eax         #  47:     return t12
    jmp     l_f2_exit              
    jmp     l_f2_9                  #  48:     goto   9
l_f2_11_if_false:
l_f2_9:

l_f2_exit:
    # epilogue
    addl    $14196, %esp            # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -16(%ebp)   4  [ $t0       <ptr(4) to <array 4 of <array 8 of <array 1 of <array 10 of <array 4 of <bool>>>>>>> %ebp-16 ]
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
    jmp     l_test_3_while_body     #   2:     goto   3_while_body
    jmp     l_test_3_while_body     #   3:     goto   3_while_body
    jmp     l_test_1                #   4:     goto   1
l_test_3_while_body:
    jmp     l_test_2_while_cond     #   6:     goto   2_while_cond
l_test_1:
    leal    v0, %eax                #   8:     &()    t0 <- v0
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   9:     param  0 <- t0
    pushl   %eax                   
    call    f0                      #  10:     call   t1 <- f0
    addl    $4, %esp               
    movl    %eax, -20(%ebp)        

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
v0:                                 # <array 4 of <array 8 of <array 1 of <array 10 of <array 4 of <bool>>>>>>
    .long    5
    .long    4
    .long    8
    .long    1
    .long   10
    .long    4
    .skip 1280








    # end of global data section
    #-----------------------------------------

    .end
##################################################
