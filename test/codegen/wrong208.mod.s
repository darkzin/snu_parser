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
    #    -13(%ebp)   1  [ $t1       <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t2       <char> %ebp-14 ]
    #    -15(%ebp)   1  [ $t3       <bool> %ebp-15 ]
    #      8(%ebp)   1  [ %v0       <char> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 3 of <array 3 of <array 2 of <array 2 of <array 9 of <int>>>>>>> %ebp+12 ]
    #    -16(%ebp)   1  [ $v2       <bool> %ebp-16 ]

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
    call    dummyCHARfunc           #   1:     call   t1 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   2:     if     t1 > 98 goto 2_while_body
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jg      l_f0_2_while_body      
    jmp     l_f0_0                  #   3:     goto   0
l_f0_2_while_body:
    movl    $97, %eax               #   5:     return 97
    jmp     l_f0_exit              
    call    dummyCHARfunc           #   6:     call   t2 <- dummyCHARfunc
    movb    %al, -14(%ebp)         
    jmp     l_f0_1_while_cond       #   7:     goto   1_while_cond
l_f0_0:
    call    dummyBOOLfunc           #   9:     call   t3 <- dummyBOOLfunc
    movb    %al, -15(%ebp)         
    movl    $1, %eax                #  10:     assign v2 <- 1
    movb    %al, -16(%ebp)         

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
    #    -16(%ebp)   4  [ $t1       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t2       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t3       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t4       <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t5       <int> %ebp-32 ]
    #      8(%ebp)   1  [ %v0       <char> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <char> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <int> %ebp+16 ]

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
    movl    $34711, %eax            #   0:     mul    t1 <- 34711, 98175
    movl    $98175, %ebx           
    imull   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     div    t2 <- t1, 26829
    movl    $26829, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   2:     return t2
    jmp     l_f1_exit              
    movl    $100, %eax              #   3:     assign v0 <- 100
    movb    %al, 8(%ebp)           
    movl    $13820, %eax            #   4:     sub    t3 <- 13820, 82234
    movl    $82234, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   5:     sub    t4 <- t3, 94515
    movl    $94515, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #   6:     sub    t5 <- t4, 99456
    movl    $99456, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #   7:     return t5
    jmp     l_f1_exit              

l_f1_exit:
    # epilogue
    addl    $20, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -13(%ebp)   1  [ $t1       <bool> %ebp-13 ]
    #    -20(%ebp)   4  [ $t2       <ptr(4) to <array 3 of <array 3 of <array 2 of <array 2 of <array 9 of <int>>>>>>> %ebp-20 ]
    #    -21(%ebp)   1  [ $t3       <char> %ebp-21 ]
    #    -28(%ebp)   4  [ $t4       <int> %ebp-28 ]
    #    -29(%ebp)   1  [ $t5       <bool> %ebp-29 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 2 of <array 2 of <array 9 of <array 2 of <array 4 of <int>>>>>>> %ebp+8 ]
    #    -30(%ebp)   1  [ $v1       <bool> %ebp-30 ]
    #   -1352(%ebp)  1320  [ $v2       <array 3 of <array 3 of <array 2 of <array 2 of <array 9 of <int>>>>>> %ebp-1352 ]
    #   -1353(%ebp)   1  [ $v3       <char> %ebp-1353 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $1344, %esp             # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $336, %ecx             
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-1352(%ebp)          # local array 'v2': 5 dimensions
    movl    $3,-1348(%ebp)          #   dimension 1: 3 elements
    movl    $3,-1344(%ebp)          #   dimension 2: 3 elements
    movl    $2,-1340(%ebp)          #   dimension 3: 2 elements
    movl    $2,-1336(%ebp)          #   dimension 4: 2 elements
    movl    $9,-1332(%ebp)          #   dimension 5: 9 elements

    # function body
    movl    $98, %eax               #   0:     if     98 < 98 goto 1
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jl      l_f2_1                 
    jmp     l_f2_2                  #   1:     goto   2
l_f2_1:
    movl    $1, %eax                #   3:     assign t1 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f2_3                  #   4:     goto   3
l_f2_2:
    movl    $0, %eax                #   6:     assign t1 <- 0
    movb    %al, -13(%ebp)         
l_f2_3:
    movzbl  -13(%ebp), %eax         #   8:     assign v1 <- t1
    movb    %al, -30(%ebp)         
    movl    $13588, %eax            #   9:     param  2 <- 13588
    pushl   %eax                   
    movl    $98, %eax               #  10:     param  1 <- 98
    pushl   %eax                   
    leal    -1352(%ebp), %eax       #  11:     &()    t2 <- v2
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  12:     param  1 <- t2
    pushl   %eax                   
    movl    $97, %eax               #  13:     param  0 <- 97
    pushl   %eax                   
    call    f0                      #  14:     call   t3 <- f0
    addl    $8, %esp               
    movb    %al, -21(%ebp)         
    movzbl  -21(%ebp), %eax         #  15:     param  0 <- t3
    pushl   %eax                   
    call    f1                      #  16:     call   t4 <- f1
    addl    $12, %esp              
    movl    %eax, -28(%ebp)        
l_f2_7_while_cond:
    movl    $1, %eax                #  18:     if     1 # 1 goto 8_while_body
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    jne     l_f2_8_while_body      
    jmp     l_f2_6                  #  19:     goto   6
l_f2_8_while_body:
    movl    $3486, %eax             #  21:     if     3486 >= 31057 goto 11_if_true
    movl    $31057, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f2_11_if_true        
    jmp     l_f2_12_if_false        #  22:     goto   12_if_false
l_f2_11_if_true:
    jmp     l_f2_10                 #  24:     goto   10
l_f2_12_if_false:
l_f2_10:
    jmp     l_f2_16_if_false        #  27:     goto   16_if_false
    jmp     l_f2_14                 #  28:     goto   14
l_f2_16_if_false:
l_f2_14:
    jmp     l_f2_19_if_false        #  31:     goto   19_if_false
    jmp     l_f2_17                 #  32:     goto   17
l_f2_19_if_false:
l_f2_17:
    movl    $100, %eax              #  35:     return 100
    jmp     l_f2_exit              
    movl    $97, %eax               #  36:     assign v3 <- 97
    movb    %al, -1353(%ebp)       
    movl    $66181, %eax            #  37:     if     66181 <= 95136 goto 23
    movl    $95136, %ebx           
    cmpl    %ebx, %eax             
    jle     l_f2_23                
    jmp     l_f2_24                 #  38:     goto   24
l_f2_23:
    movl    $1, %eax                #  40:     assign t5 <- 1
    movb    %al, -29(%ebp)         
    jmp     l_f2_25                 #  41:     goto   25
l_f2_24:
    movl    $0, %eax                #  43:     assign t5 <- 0
    movb    %al, -29(%ebp)         
l_f2_25:
    movzbl  -29(%ebp), %eax         #  45:     assign v1 <- t5
    movb    %al, -30(%ebp)         
    jmp     l_f2_7_while_cond       #  46:     goto   7_while_cond
l_f2_6:

l_f2_exit:
    # epilogue
    addl    $1344, %esp             # remove locals
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
    jmp     l_test_exit            
    movl    $72702, %eax            #   1:     div    t0 <- 72702, 16529
    movl    $16529, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   2:     assign v0 <- t0
    movl    %eax, v0               
l_test_3_while_cond:
    movl    $97, %eax               #   4:     if     97 >= 98 goto 4_while_body
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jge     l_test_4_while_body    
    jmp     l_test_2                #   5:     goto   2
l_test_4_while_body:
    jmp     l_test_8_if_false       #   7:     goto   8_if_false
    jmp     l_test_6                #   8:     goto   6
l_test_8_if_false:
l_test_6:
    jmp     l_test_exit            
    jmp     l_test_3_while_cond     #  12:     goto   3_while_cond
l_test_2:
    jmp     l_test_exit            

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








    # end of global data section
    #-----------------------------------------

    .end
##################################################
