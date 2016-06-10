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
    #    -17(%ebp)   1  [ $t2       <char> %ebp-17 ]
    #    -18(%ebp)   1  [ $t3       <bool> %ebp-18 ]
    #      8(%ebp)   1  [ %v0       <char> %ebp+8 ]
    #    -24(%ebp)   4  [ $v1       <int> %ebp-24 ]

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
    movl    $38443, %eax            #   0:     mul    t1 <- 38443, 38505
    movl    $38505, %ebx           
    imull   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     assign v1 <- t1
    movl    %eax, -24(%ebp)        
    call    dummyCHARfunc           #   2:     call   t2 <- dummyCHARfunc
    movb    %al, -17(%ebp)         
l_f0_3_while_cond:
    call    dummyBOOLfunc           #   4:     call   t3 <- dummyBOOLfunc
    movb    %al, -18(%ebp)         
    movzbl  -18(%ebp), %eax         #   5:     if     t3 = 1 goto 4_while_body
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f0_4_while_body      
    jmp     l_f0_2                  #   6:     goto   2
l_f0_4_while_body:
    jmp     l_f0_3_while_cond       #   8:     goto   3_while_cond
l_f0_2:

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
    #    -13(%ebp)   1  [ $t1       <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t2       <bool> %ebp-14 ]
    #    -15(%ebp)   1  [ $t3       <char> %ebp-15 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 1 of <array 1 of <array 2 of <array 10 of <array 7 of <int>>>>>>> %ebp+8 ]
    #    -16(%ebp)   1  [ $v1       <char> %ebp-16 ]

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
    call    dummyCHARfunc           #   0:     call   t1 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movl    $99, %eax               #   1:     if     99 > t1 goto 1
    movzbl  -13(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jg      l_f1_1                 
    jmp     l_f1_2                  #   2:     goto   2
l_f1_1:
    movl    $1, %eax                #   4:     assign t2 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_f1_3                  #   5:     goto   3
l_f1_2:
    movl    $0, %eax                #   7:     assign t2 <- 0
    movb    %al, -14(%ebp)         
l_f1_3:
    movzbl  -14(%ebp), %eax         #   9:     return t2
    jmp     l_f1_exit              
    movl    $100, %eax              #  10:     assign v1 <- 100
    movb    %al, -16(%ebp)         
    call    dummyCHARfunc           #  11:     call   t3 <- dummyCHARfunc
    movb    %al, -15(%ebp)         
    movzbl  -15(%ebp), %eax         #  12:     param  0 <- t3
    pushl   %eax                   
    call    WriteChar               #  13:     call   WriteChar
    addl    $4, %esp               

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
    #    -16(%ebp)   4  [ $t1       <ptr(4) to <array 1 of <array 1 of <array 2 of <array 10 of <array 7 of <int>>>>>>> %ebp-16 ]
    #    -17(%ebp)   1  [ $t2       <bool> %ebp-17 ]
    #    -24(%ebp)   4  [ $t3       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t4       <int> %ebp-28 ]
    #    -29(%ebp)   1  [ $v0       <bool> %ebp-29 ]
    #    -30(%ebp)   1  [ $v1       <char> %ebp-30 ]
    #   -616(%ebp)  584  [ $v2       <array 1 of <array 1 of <array 2 of <array 10 of <array 7 of <int>>>>>> %ebp-616 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $604, %esp              # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $151, %ecx             
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-616(%ebp)           # local array 'v2': 5 dimensions
    movl    $1,-612(%ebp)           #   dimension 1: 1 elements
    movl    $1,-608(%ebp)           #   dimension 2: 1 elements
    movl    $2,-604(%ebp)           #   dimension 3: 2 elements
    movl    $10,-600(%ebp)          #   dimension 4: 10 elements
    movl    $7,-596(%ebp)           #   dimension 5: 7 elements

    # function body
l_f2_1_while_cond:
    movl    $1, %eax                #   1:     assign v0 <- 1
    movb    %al, -29(%ebp)         
    movl    $97, %eax               #   2:     assign v1 <- 97
    movb    %al, -30(%ebp)         
    jmp     l_f2_1_while_cond       #   3:     goto   1_while_cond
    jmp     l_f2_7_if_false         #   4:     goto   7_if_false
    leal    -616(%ebp), %eax        #   5:     &()    t1 <- v2
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   6:     param  0 <- t1
    pushl   %eax                   
    call    f1                      #   7:     call   t2 <- f1
    addl    $4, %esp               
    movb    %al, -17(%ebp)         
    jmp     l_f2_12_if_false        #   8:     goto   12_if_false
    jmp     l_f2_10                 #   9:     goto   10
l_f2_12_if_false:
l_f2_10:
l_f2_14_while_cond:
    jmp     l_f2_14_while_cond      #  13:     goto   14_while_cond
    jmp     l_f2_18_if_false        #  14:     goto   18_if_false
    jmp     l_f2_16                 #  15:     goto   16
l_f2_18_if_false:
l_f2_16:
    jmp     l_f2_5                  #  18:     goto   5
l_f2_7_if_false:
l_f2_5:
    movl    $90196, %eax            #  21:     div    t3 <- 90196, 43274
    movl    $43274, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  22:     add    t4 <- t3, 81020
    movl    $81020, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    $60558, %eax            #  23:     if     60558 < t4 goto 20_if_true
    movl    -28(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jl      l_f2_20_if_true        
    jmp     l_f2_21_if_false        #  24:     goto   21_if_false
l_f2_20_if_true:
    jmp     l_f2_19                 #  26:     goto   19
l_f2_21_if_false:
l_f2_19:

l_f2_exit:
    # epilogue
    addl    $604, %esp              # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -16(%ebp)   4  [ $t0       <ptr(4) to <array 5 of <char>>> %ebp-16 ]

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
    leal    _str_1, %eax            #   1:     &()    t0 <- _str_1
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   2:     param  0 <- t0
    pushl   %eax                   
    call    WriteStr                #   3:     call   WriteStr
    addl    $4, %esp               
    jmp     l_test_3_if_true        #   4:     goto   3_if_true
    jmp     l_test_3_if_true        #   5:     goto   3_if_true
    jmp     l_test_3_if_true        #   6:     goto   3_if_true
l_test_3_if_true:
    jmp     l_test_2                #   8:     goto   2
l_test_2:

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
_str_1:                             # <array 5 of <char>>
    .long    1
    .long    5
    .asciz "bye\n"








    # end of global data section
    #-----------------------------------------

    .end
##################################################
