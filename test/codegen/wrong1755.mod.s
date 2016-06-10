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
    #    -13(%ebp)   1  [ $t3       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t4       <bool> %ebp-14 ]
    #    -15(%ebp)   1  [ $t5       <char> %ebp-15 ]
    #    -20(%ebp)   4  [ $t6       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t7       <int> %ebp-24 ]
    #      8(%ebp)   1  [ %v1       <char> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <ptr(4) to <array 53 of <array 62 of <array 99 of <array 71 of <array 57 of <int>>>>>>> %ebp+12 ]

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
    call    dummyBOOLfunc           #   0:     call   t3 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   1:     if     t3 = 1 goto 4
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f0_4                 
    jmp     l_f0_2                  #   2:     goto   2
l_f0_4:
    movl    $1, %eax                #   4:     assign t4 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_f0_3                  #   5:     goto   3
l_f0_2:
    movl    $0, %eax                #   7:     assign t4 <- 0
    movb    %al, -14(%ebp)         
l_f0_3:
    movzbl  -14(%ebp), %eax         #   9:     return t4
    jmp     l_f0_exit              
    call    dummyCHARfunc           #  10:     call   t5 <- dummyCHARfunc
    movb    %al, -15(%ebp)         
    movzbl  -15(%ebp), %eax         #  11:     assign v1 <- t5
    movb    %al, 8(%ebp)           
l_f0_7_while_cond:
    movl    $6258, %eax             #  13:     div    t6 <- 6258, 60702
    movl    $60702, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -20(%ebp)        
    call    ReadInt                 #  14:     call   t7 <- ReadInt
    movl    %eax, -24(%ebp)        
    movl    -20(%ebp), %eax         #  15:     if     t6 # t7 goto 8_while_body
    movl    -24(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jne     l_f0_8_while_body      
    jmp     l_f0_6                  #  16:     goto   6
l_f0_8_while_body:
    jmp     l_f0_7_while_cond       #  18:     goto   7_while_cond
l_f0_6:

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
    #    -13(%ebp)   1  [ $t3       <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t4       <bool> %ebp-14 ]
    #    -15(%ebp)   1  [ $v1       <bool> %ebp-15 ]
    #    -20(%ebp)   4  [ $v2       <int> %ebp-20 ]

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
l_f1_1_while_cond:
    call    dummyCHARfunc           #   1:     call   t3 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movl    $97, %eax               #   2:     if     97 < t3 goto 2_while_body
    movzbl  -13(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jl      l_f1_2_while_body      
    jmp     l_f1_0                  #   3:     goto   0
l_f1_2_while_body:
    movl    $98, %eax               #   5:     if     98 < 99 goto 5
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jl      l_f1_5                 
    jmp     l_f1_6                  #   6:     goto   6
l_f1_5:
    movl    $1, %eax                #   8:     assign t4 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_f1_7                  #   9:     goto   7
l_f1_6:
    movl    $0, %eax                #  11:     assign t4 <- 0
    movb    %al, -14(%ebp)         
l_f1_7:
    movzbl  -14(%ebp), %eax         #  13:     assign v1 <- t4
    movb    %al, -15(%ebp)         
    jmp     l_f1_1_while_cond       #  14:     goto   1_while_cond
l_f1_0:
    movl    $73053, %eax            #  16:     assign v2 <- 73053
    movl    %eax, -20(%ebp)        
    movl    $99, %eax               #  17:     if     99 = 97 goto 11_if_true
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    je      l_f1_11_if_true        
    jmp     l_f1_12_if_false        #  18:     goto   12_if_false
l_f1_11_if_true:
    jmp     l_f1_14                 #  20:     goto   14
l_f1_14:
l_f1_18_while_cond:
    movl    $100, %eax              #  23:     if     100 < 98 goto 19_while_body
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jl      l_f1_19_while_body     
    jmp     l_f1_17                 #  24:     goto   17
l_f1_19_while_body:
    movl    $1, %eax                #  26:     assign v1 <- 1
    movb    %al, -15(%ebp)         
    jmp     l_f1_exit              
    jmp     l_f1_exit              
    movl    $32233, %eax            #  29:     if     32233 < 69171 goto 25_if_true
    movl    $69171, %ebx           
    cmpl    %ebx, %eax             
    jl      l_f1_25_if_true        
    jmp     l_f1_26_if_false        #  30:     goto   26_if_false
l_f1_25_if_true:
    jmp     l_f1_24                 #  32:     goto   24
l_f1_26_if_false:
l_f1_24:
    jmp     l_f1_18_while_cond      #  35:     goto   18_while_cond
l_f1_17:
    jmp     l_f1_10                 #  37:     goto   10
l_f1_12_if_false:
l_f1_10:

l_f1_exit:
    # epilogue
    addl    $8, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -16(%ebp)   4  [ $t3       <ptr(4) to <array 53 of <array 62 of <array 99 of <array 71 of <array 57 of <int>>>>>>> %ebp-16 ]
    #    -17(%ebp)   1  [ $t4       <bool> %ebp-17 ]
    #    -18(%ebp)   1  [ $t5       <bool> %ebp-18 ]
    #    -24(%ebp)   4  [ $t6       <int> %ebp-24 ]
    #   -971215784(%ebp)  971215760  [ $v1       <array 53 of <array 62 of <array 99 of <array 71 of <array 57 of <int>>>>>> %ebp-971215784 ]
    #   -971215785(%ebp)   1  [ $v2       <bool> %ebp-971215785 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $971215776, %esp        # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $242803944, %ecx       
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-971215784(%ebp)     # local array 'v1': 5 dimensions
    movl    $53,-971215780(%ebp)    #   dimension 1: 53 elements
    movl    $62,-971215776(%ebp)    #   dimension 2: 62 elements
    movl    $99,-971215772(%ebp)    #   dimension 3: 99 elements
    movl    $71,-971215768(%ebp)    #   dimension 4: 71 elements
    movl    $57,-971215764(%ebp)    #   dimension 5: 57 elements

    # function body
    leal    -971215784(%ebp), %eax  #   0:     &()    t3 <- v1
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     param  1 <- t3
    pushl   %eax                   
    movl    $99, %eax               #   2:     param  0 <- 99
    pushl   %eax                   
    call    f0                      #   3:     call   t4 <- f0
    addl    $8, %esp               
    movb    %al, -17(%ebp)         
    movzbl  -17(%ebp), %eax         #   4:     if     t4 = 1 goto 1_if_true
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f2_1_if_true         
    jmp     l_f2_2_if_false         #   5:     goto   2_if_false
l_f2_1_if_true:
    jmp     l_f2_0                  #   7:     goto   0
l_f2_2_if_false:
l_f2_0:
    movl    $98, %eax               #  10:     if     98 <= 100 goto 5
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jle     l_f2_5                 
    jmp     l_f2_6                  #  11:     goto   6
l_f2_5:
    movl    $1, %eax                #  13:     assign t5 <- 1
    movb    %al, -18(%ebp)         
    jmp     l_f2_7                  #  14:     goto   7
l_f2_6:
    movl    $0, %eax                #  16:     assign t5 <- 0
    movb    %al, -18(%ebp)         
l_f2_7:
    movzbl  -18(%ebp), %eax         #  18:     assign v2 <- t5
    movb    %al, -971215785(%ebp)  
l_f2_10_while_cond:
    movl    $15737, %eax            #  20:     add    t6 <- 15737, 1504
    movl    $1504, %ebx            
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  21:     if     t6 <= 43820 goto 11_while_body
    movl    $43820, %ebx           
    cmpl    %ebx, %eax             
    jle     l_f2_11_while_body     
    jmp     l_f2_9                  #  22:     goto   9
l_f2_11_while_body:
    jmp     l_f2_10_while_cond      #  24:     goto   10_while_cond
l_f2_9:

l_f2_exit:
    # epilogue
    addl    $971215776, %esp        # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -13(%ebp)   1  [ $t0       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t1       <bool> %ebp-14 ]
    #    -15(%ebp)   1  [ $t2       <char> %ebp-15 ]

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
    movl    $98, %eax               #   1:     if     98 < 99 goto 2
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jl      l_test_2               
    jmp     l_test_3                #   2:     goto   3
l_test_2:
    movl    $1, %eax                #   4:     assign t0 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_test_4                #   5:     goto   4
l_test_3:
    movl    $0, %eax                #   7:     assign t0 <- 0
    movb    %al, -13(%ebp)         
l_test_4:
    movzbl  -13(%ebp), %eax         #   9:     assign v0 <- t0
    movb    %al, v0                
    jmp     l_test_8                #  10:     goto   8
    movl    $1, %eax                #  11:     assign t1 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_test_9                #  12:     goto   9
l_test_8:
    movl    $0, %eax                #  14:     assign t1 <- 0
    movb    %al, -14(%ebp)         
l_test_9:
    movzbl  -14(%ebp), %eax         #  16:     assign v0 <- t1
    movb    %al, v0                
    jmp     l_test_exit            
    call    dummyCHARfunc           #  18:     call   t2 <- dummyCHARfunc
    movb    %al, -15(%ebp)         
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
v0:                                 # <bool>
    .skip    1








    # end of global data section
    #-----------------------------------------

    .end
##################################################
